-- loop-check.lua
-- Shared check logic for loop agents (build, test, clippy).
-- This module provides functions to parse check flags, run cargo checks,
-- manage fix-mode state, and provide check file paths.

local loop_check = {}

-- Returns a table with boolean flags for build, test, clippy from agent_config.
function loop_check.get_check_flags(agent_config)
	return {
		build = value_or(agent_config.build, false),
		test  = value_or(agent_config.test, false),
		clippy = value_or(agent_config.clippy, false),
	}
end

-- Returns true if any check is enabled.
function loop_check.any_check_enabled(check_flags)
	return check_flags.build or check_flags.test or check_flags.clippy
end

-- List of all possible check definitions.
local all_checks = {
	{ key = "build",  cmd = "build",  file_name = "cargo-build.txt" },
	{ key = "test",   cmd = "test",   file_name = "cargo-test.txt" },
	{ key = "clippy", cmd = "clippy", file_name = "cargo-clippy.txt" },
}

-- Returns only the enabled check definitions for the given flags.
function loop_check.get_enabled_checks(check_flags)
	local enabled = {}
	for _, c in ipairs(all_checks) do
		if check_flags[c.key] then
			table.insert(enabled, c)
		end
	end
	return enabled
end

-- Ensures the data/check directory exists and returns its path.
-- Returns nil if workbench has no data_dir.
function loop_check.ensure_data_check_dir(workbench)
	if not workbench or not workbench.data_dir then
		return nil
	end
	local dir = workbench.data_dir .. "/check"
	aip.file.ensure_dir(dir)
	return dir
end

-- Returns the expected data check directory path (may not exist).
function loop_check.get_data_check_dir(workbench)
	if not workbench or not workbench.data_dir then
		return nil
	end
	return workbench.data_dir .. "/check"
end

-- Runs cargo commands for each enabled check, saves error output to data check files.
-- Cleans up stale output files for disabled checks.
-- Returns a list of absolute paths of output files that contain errors.
function loop_check.run_checks(check_flags, data_check_dir)
	aip.file.ensure_dir(data_check_dir)
	local failing_paths = {}

	for _, c in ipairs(all_checks) do
		local enabled = check_flags[c.key]
		local file_path = data_check_dir .. "/" .. c.file_name

		if enabled then
			local result = aip.cmd.exec("cargo", c.cmd)
			if not result.error then
				local stderr = aip.text.trim(value_or(result.stderr, ""))
				local has_error = stderr and stderr ~= "" and string.find(stderr:lower(), "error") ~= nil
				if has_error then
					aip.file.save(file_path, stderr)
					table.insert(failing_paths, file_path)
				else
					if aip.file.exists(file_path) then
						aip.file.delete(file_path)
					end
				end
			else
				aip.run.pin("loop-check-error", { label = "cargo " .. c.cmd, content = result.error })
			end
		else
			-- Clean up stale file for disabled check
			if aip.file.exists(file_path) then
				aip.file.delete(file_path)
			end
		end
	end

	return failing_paths
end

-- Returns the path to the fix-prompt.md file inside the loop directory.
local function fix_prompt_path(loop_dir)
	return loop_dir .. "/check/fix-prompt.md"
end

-- Checks whether fix mode is active by looking for fix-prompt.md.
-- Returns fix_mode (boolean) and, if active, the trimmed content of the fix prompt.
function loop_check.is_fix_mode(loop_dir)
	local path = fix_prompt_path(loop_dir)
	if aip.file.exists(path) then
		local raw = aip.file.load(path)
		if raw and raw.content then
			return true, aip.text.trim(raw.content)
		end
	end
	return false, nil
end

-- Updates the fix mode state based on the list of failing check paths.
-- Creates fix-prompt.md when there are failures; deletes it when all pass.
-- Pins status messages.
-- Returns a table with `fix_mode` (boolean) and `should_redo` (boolean).
function loop_check.update_fix_mode(loop_dir, failing_paths)
	local fix_dir = loop_dir .. "/check"
	local path = fix_prompt_path(loop_dir)

	if #failing_paths > 0 then
		aip.file.ensure_dir(fix_dir)
        local lines = {}
        table.insert(lines, "Build/test/clippy checks have FAILED.")
        table.insert(lines, "")

        -- Collect source files referenced in the error output.
        local source_files = {}
        local source_seen = {}
        for _, p in ipairs(failing_paths) do
            local record = aip.file.load(p)
            if record and record.content then
                local spaths = loop_check.extract_source_file_paths(record.content)
                for _, sp in ipairs(spaths) do
                    if not source_seen[sp] then
                        source_seen[sp] = true
                        table.insert(source_files, sp)
                    end
                end
            end
        end

        table.insert(lines, "The following check output files contain full error details (provided in context):")
        table.insert(lines, "")
        for _, p in ipairs(failing_paths) do
            local rel = aip.path.diff(p, CTX.WORKSPACE_DIR) or p
            table.insert(lines, "- " .. rel)
        end
        table.insert(lines, "")

        if #source_files > 0 then
            table.insert(lines, "Source files referenced in the errors:")
            table.insert(lines, "")
            for _, sp in ipairs(source_files) do
                table.insert(lines, "- " .. sp)
            end
            table.insert(lines, "")
            table.insert(lines, "Review the check output files to understand what needs fixing in the source files above.")
        else
            table.insert(lines, "Review the check output files to understand what needs fixing.")
        end
        table.insert(lines, "")
        table.insert(lines, "Do not emit a <NEXT_PROMPT> tag; the loop will re-run checks automatically.")
		local content = table.concat(lines, "\n")
		aip.file.save(path, content)
		aip.run.pin("loop-fix-mode", "Entering fix mode due to check failures")
		return { fix_mode = true, should_redo = true }
	else
		if aip.file.exists(path) then
			aip.file.delete(path)
			aip.run.pin("loop-fix-mode", "Exiting fix mode; all checks passed or checks disabled.")
			return { fix_mode = false, should_redo = true }
		end
		return { fix_mode = false, should_redo = false }
	end
end

-- Returns a list of existing check output file paths from the data check directory.
-- Useful for including in context_globs_post.
function loop_check.get_check_file_paths(data_check_dir)
	if not data_check_dir or not aip.file.exists(data_check_dir) then
		return {}
	end
	local paths = {}
	for _, c in ipairs(all_checks) do
		local p = data_check_dir .. "/" .. c.file_name
		if aip.file.exists(p) then
			table.insert(paths, p)
		end
	end
	return paths
end

-- Extracts source file paths (e.g., .rs, .toml, .lua) referenced in cargo error output.
-- Scans the text for patterns like `--> src/main.rs:10:5` or paths ending with those extensions.
-- Returns a deduplicated list of relative file paths.
function loop_check.extract_source_file_paths(text)
    local paths = {}
    local seen = {}
    for _, ext in ipairs({"rs", "toml", "lua"}) do
        for file in string.gmatch(text, "([%w_/%.%-]+%." .. ext .. ")") do
            if not seen[file] then
                seen[file] = true
                table.insert(paths, file)
            end
        end
    end
    return paths
end

return loop_check

local loop = require("loop")

local function loop_end(params)
	aip.run.set_label("loop-end")

	local workbench = params.workbench
	local inputs = params.inputs
	---@cast inputs -nil

	-- Read check flags from agent config (build, test, clippy)
	local agent_config = value_or(inputs.agent_config, {})
	local check_flags = {
		build = value_or(agent_config.build, false),
		test = value_or(agent_config.test, false),
		clippy = value_or(agent_config.clippy, false),
	}

	-- Workbench absent: skip
	if workbench == nil then
		return { success = true, coder_redo = false }
	end

	local loop_paths = params.loop_paths or loop.get_loop_paths(workbench)

	---@cast loop_paths -nil

	-- Run cargo checks (build, test, clippy) if any flags are enabled
	local checks = {
		{ enabled = check_flags.build,  cmd = "build",  file_name = "cargo-build.txt" },
		{ enabled = check_flags.test,   cmd = "test",   file_name = "cargo-test.txt" },
		{ enabled = check_flags.clippy, cmd = "clippy", file_name = "cargo-clippy.txt" },
	}

	local any_check_enabled = check_flags.build or check_flags.test or check_flags.clippy
	if any_check_enabled and workbench.data_dir then
		local data_check_dir = workbench.data_dir .. "/check"
		aip.file.ensure_dir(data_check_dir)

		for _, check in ipairs(checks) do
			if check.enabled then
				local result = aip.cmd.exec("cargo", check.cmd)
				if not result.error then
					local stderr = aip.text.trim(value_or(result.stderr, ""))
					local file_path = data_check_dir .. "/" .. check.file_name
					local has_error = stderr and stderr ~= "" and string.find(stderr:lower(), "error") ~= nil
					if has_error then
						aip.file.save(file_path, stderr)
					else
						if aip.file.exists(file_path) then
							aip.file.delete(file_path)
						end
					end
				else
					aip.run.pin("loop-check-error", { label = "cargo " .. check.cmd, content = result.error })
				end
			end
		end
	end

	-- Clean up stale check files for disabled flags
	if workbench.data_dir then
		local data_check_dir = workbench.data_dir .. "/check"
		for _, check in ipairs(checks) do
			if not check.enabled then
				local file_path = data_check_dir .. "/" .. check.file_name
				if aip.file.exists(file_path) then
					aip.file.delete(file_path)
				end
			end
		end
	end

	-- Determine fix mode state
	if workbench.data_dir then
		local fix_prompt_dir = loop_paths.dir .. "/check"
		local fix_prompt_path = fix_prompt_dir .. "/fix-prompt.md"
		local data_check_dir = workbench.data_dir .. "/check"

		-- Collect any check output file that exists for enabled flags
		local failing_paths = {}
		for _, check in ipairs(checks) do
			if check.enabled then
				local file_path = data_check_dir .. "/" .. check.file_name
				if aip.file.exists(file_path) then
					local rel = aip.path.diff(file_path, CTX.WORKSPACE_DIR)
					table.insert(failing_paths, rel or file_path)
				end
			end
		end

		if #failing_paths > 0 then
			-- At least one check failed: enter or stay in fix mode
			aip.file.ensure_dir(fix_prompt_dir)
			local lines = {}
			table.insert(lines, "Build/test/clippy checks have FAILED.")
			table.insert(lines, "")
			table.insert(lines, "The following check output files contain errors or warnings:")
			table.insert(lines, "")
			for _, p in ipairs(failing_paths) do
				table.insert(lines, "- " .. p)
			end
			table.insert(lines, "")
			table.insert(lines, "Review the errors in these files (provided in context). Fix all issues in the codebase.")
			table.insert(lines, "Do not emit a <NEXT_PROMPT> tag; the loop will re-run checks automatically.")
			local fix_prompt_content = table.concat(lines, "\n")
			aip.file.save(fix_prompt_path, fix_prompt_content)
			aip.run.pin("loop-fix-mode", "Entering fix mode due to check failures")
			return {
				coder_redo = true,
				success = true,
			}
		else
			-- No check files exist for enabled flags
			if aip.file.exists(fix_prompt_path) then
				aip.file.delete(fix_prompt_path)
				aip.run.pin("loop-fix-mode", "Exiting fix mode; all checks passed or checks disabled.")
				-- Force a redo to resume the deferred prompt
				return {
					coder_redo = true,
					success = true,
				}
			end
		end
	end



	aip.file.ensure_dir(loop_paths.dir)
	aip.file.ensure_exists(loop_paths.prompt, "")

	-- Scan extruded AI responses for <NEXT_PROMPT> tags
	local next_tags = {}
	local responses = value_or(inputs.coder_responses, {})
	for _, resp in ipairs(responses) do
		local extruded = value_or(resp.content_extruded, "")
		local tags = aip.tag.extract(extruded, "NEXT_PROMPT")
		for _, tag in ipairs(tags) do
			table.insert(next_tags, tag.content or "")
		end
	end

	-- Find the first non‑empty tag content
	local new_content = ""
	for _, c in ipairs(next_tags) do
		local trimmed = aip.text.trim(c)
		if trimmed ~= nil and trimmed ~= "" then
			new_content = trimmed
			break
		end
	end

	if new_content == "" and #next_tags > 0 then
		new_content = next_tags[1]
	end

	if #next_tags > 0 then
		aip.file.save(loop_paths.prompt, new_content)
		aip.run.pin("loop-end", { label = "Next prompt:", content = new_content })
		return {
			coder_redo = true,
			success = true,
		}
	end

	-- No next prompt requested: write THE_END marker and pin
	local coder_redo_count = value_or(inputs.coder_redo_count, 0)
	local end_content = "THE_END\n\n```yaml\ncoder_redo_count: " .. tostring(coder_redo_count) .. "\n```\n"
	aip.file.save(loop_paths.prompt, end_content)
	aip.run.pin("loop-end", "No next prompt requested. Loop ended (coder_redo_count=" .. tostring(coder_redo_count) .. ").")

	return {
		coder_redo = false,
		success = true,
	}
end

return {
	loop_end = loop_end,
}

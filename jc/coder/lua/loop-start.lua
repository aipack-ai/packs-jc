local loop = require("loop")
local loop_check = require("loop-check")

local function loop_start(params)
	aip.run.set_label("loop-start")

	local workbench = params.workbench
	local input = params.inputs

	-- Read check flags from agent config (build, test, clippy)
	local agent_config = value_or(input.agent_config, {})
	local check_flags = loop_check.get_check_flags(agent_config)

	-- Workbench absent: skip with a note
	if workbench == nil then
		aip.run.pin("loop-start", "Loop sub-agent skipped because workbench is not enabled.")
		return {
			agent_on = "start",
			success = true,
		}
	end

	-- Workbench present: set up loop directory
	local paths = params.loop_paths or loop.get_loop_paths(workbench)

	aip.file.ensure_dir(paths.dir)

	-- Save original user prompt on first run
	if not aip.file.exists(paths.original_prompt) then
		aip.file.save(paths.original_prompt, value_or(input.coder_prompt, ""))
	end

	-- Generate loop instructions if missing
	if not aip.file.exists(paths.instructions) then
		local agent_result = aip.agent.run("loop-prep", {
			inputs = { { loop_dir = paths.dir } }
		})
		if not agent_result or not agent_result.outputs or #agent_result.outputs == 0 or not agent_result.outputs[1].success then
			aip.run.pin("loop-make-inst-error", "Failed to generate loop-instructions.md")
		end
	end

	-- Check if fix-prompt.md exists (indicating fix mode)
	local fix_mode, fix_prompt_content = loop_check.is_fix_mode(paths.dir)
	local new_prompt = nil
	if fix_mode then
		new_prompt = fix_prompt_content
	end

	if not fix_mode then
		-- Build new coder prompt from regular prompt.txt
		aip.file.ensure_exists(paths.prompt, "")
		local next_prompt_raw = aip.file.load(paths.prompt)
		local next_prompt_content = nil
		if next_prompt_raw then
			next_prompt_content = aip.text.trim(next_prompt_raw.content)
		end

		if next_prompt_content and next_prompt_content ~= "" and next_prompt_content:sub(1, 7) ~= "THE_END" then
			new_prompt = next_prompt_content
		else
			new_prompt = value_or(input.coder_prompt, "")
		end
	end

	if new_prompt then
		if not fix_mode then
			new_prompt = new_prompt ..
				"\n\nMake sure to follow the loop-rules.md and loop-instructions.md to give the NEXT_PROMPT tag"
		end
	else
		new_prompt = value_or(input.coder_prompt, "")
	end

	-- Update context_globs_post to include loop-rules and instructions files
	local coder_params = value_or(input.coder_params, {})
	local new_context_globs_post = value_or(coder_params.context_globs_post, {})

	local loop_rules_path = aip.path.join(CTX.AGENT_FILE_DIR, "templates/loop-rules.md")
	table.insert(new_context_globs_post, loop_rules_path)
	if aip.file.exists(paths.instructions) then
		table.insert(new_context_globs_post, paths.instructions)
	end

	-- In fix mode, include the check output files so auto-context can see them
	if fix_mode then
		local data_check_dir = loop_check.get_data_check_dir(workbench)
		if data_check_dir then
			local check_paths = loop_check.get_check_file_paths(data_check_dir)
			for _, p in ipairs(check_paths) do
				table.insert(new_context_globs_post, p)
			end
		end
	end

	-- Build and display loop-start summary
	aip.run.pin("next_prompt", { label = "    Next Prompt:", content = new_prompt })
	local context_globs_post_str = table.concat(new_context_globs_post, "\n")
	aip.run.pin("loop-start", { label = "+Context Files:", content = context_globs_post_str })
	print("new_context_globs_post", new_context_globs_post)

	return {
		_display = "loop-start processed",
		agent_on = { "start", "end" },
		coder_params = { context_globs_post = new_context_globs_post },
		coder_prompt = new_prompt,
		check_flags = check_flags,
		success = true,
	}
end

return {
	loop_start = loop_start,
}

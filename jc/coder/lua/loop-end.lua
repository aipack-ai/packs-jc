local loop = require("loop")

local function loop_end(params)
	aip.run.set_label("loop-end")

	local workbench = params.workbench
	local inputs = params.inputs

	-- Workbench absent: skip
	if workbench == nil then
		return { success = true, coder_redo = false }
	end

	local loop_paths = params.loop_paths or loop.get_loop_paths(workbench)

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

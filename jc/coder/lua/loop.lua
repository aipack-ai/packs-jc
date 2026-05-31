-- Shared path utility for loop agents
-- Returns the loop directory inside the workbench cache.
local function get_loop_dir(wb)
	return wb.cache_dir .. "/loop"
end

return {
	get_loop_dir = get_loop_dir
}

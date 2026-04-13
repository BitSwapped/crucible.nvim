-- crucible/groups.lua

local M = {}

--- Gather all highlight groups from core modules and plugins
---@param theme  table   semantic theme (from theme.setup)
---@param styles table   style preferences (bold/italic/etc) from config
---@return table         complete highlight definition map { GroupName = {...} }
function M.get(theme, styles)
	local highlights = {}

	-- Core Highlight Modules
	local core_modules = {
		"crucible.groups.editor",
		"crucible.groups.syntax",
		"crucible.groups.treesitter",
		"crucible.groups.lsp",
	}

	for _, mod_name in ipairs(core_modules) do
		local ok, mod = pcall(require, mod_name)
		if ok then
			local hl = mod.get(theme, styles)
			highlights = vim.tbl_deep_extend("force", highlights, hl)
		else
			vim.notify("[Crucible] Failed to load core module: " .. mod_name, vim.log.levels.WARN)
		end
	end

	return highlights
end

return M

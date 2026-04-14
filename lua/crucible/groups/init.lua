local M = {}

--- Gather all highlight groups from core modules and plugins
---@param theme  table   semantic theme (from theme.setup)
---@param styles table   style preferences (bold/italic/etc) from config
---@return table         complete highlight definition map { GroupName = {...} }
function M.get(theme, styles)
	local highlights = {}

	local modules = {
		"crucible.groups.editor",
		"crucible.groups.treesitter",
		"crucible.groups.syntax",
		"crucible.groups.lsp",
		"crucible.groups.semantic_tokens",
	}

	local plugins = {
		"crucible.groups.plugins.gitsigns",
		"crucible.groups.plugins.indent-blankline",
		"crucible.groups.plugins.mini_files",
		"crucible.groups.plugins.mini_icons",
		"crucible.groups.plugins.mini_indentscope",
		"crucible.groups.plugins.noice",
	}

	for _, mod_name in ipairs(modules) do
		local mod = require(mod_name)
		highlights = vim.tbl_deep_extend("force", highlights, mod.get(theme, styles))
	end

	for _, mod_name in ipairs(plugins) do
		local ok, mod = pcall(require, mod_name)
		if ok and mod.get then
			highlights = vim.tbl_deep_extend("force", highlights, mod.get(theme, styles))
		end
	end

	return highlights
end

return M

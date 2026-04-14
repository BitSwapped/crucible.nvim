local M = {}

---@param theme table
M.get = function(theme)
	local ui = theme.ui

	return {
		-- v3 (ibl)
		IblIndent = { fg = ui.base3, nocombine = true },
		IblScope = { fg = ui.base5, nocombine = true },

		-- v2 (legacy)
		IndentBlanklineChar = { fg = ui.base3, nocombine = true },
		IndentBlanklineContextChar = { fg = ui.base5, nocombine = true },
	}
end

return M

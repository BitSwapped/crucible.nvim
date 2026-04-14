local M = {}

---@param theme table
M.get = function(theme)
	local diff = theme.diff
	local ui = theme.ui
	return {
		-- Sign column
		GitSignsAdd = { fg = diff.add },
		GitSignsChange = { fg = diff.change },
		GitSignsDelete = { fg = diff.delete },

		-- Line number
		GitSignsAddNr = { fg = diff.add },
		GitSignsChangeNr = { fg = diff.change },
		GitSignsDeleteNr = { fg = diff.delete },

		-- Line highlights
		GitSignsAddLn = { bg = diff.add_bg },
		GitSignsChangeLn = { bg = diff.change_bg },
		GitSignsDeleteLn = { bg = diff.delete_bg },

		-- Blame
		GitSignsCurrentLineBlame = { fg = ui.base5, italic = true },
	}
end

return M

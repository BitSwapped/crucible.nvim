local M = {}

---@param theme table
M.get = function(theme)
	local ui = theme.ui
	local syn = theme.syn

	return {
		-- Cmdline
		NoiceCmdline = { fg = ui.fg },
		NoiceCmdlineIcon = { fg = syn.magenta },
		NoiceCmdlinePopup = { fg = syn.blue, bg = ui.bg },
		NoiceCmdlinePopupBorder = { fg = syn.blue },
		NoiceCmdlinePopupTitle = { fg = syn.pink, bold = true },
		NoiceCmdlineIconSearch = { fg = syn.yellow },

		-- Confirm
		NoiceConfirm = { fg = ui.fg, bg = ui.float_bg },
		NoiceConfirmBorder = { fg = ui.float_border },

		-- Mini
		NoiceMini = { fg = syn.pink, bg = ui.base2 },

		-- Progress
		NoiceFormatProgressDone = { fg = ui.bg, bg = syn.teal },
		NoiceFormatProgressTodo = { bg = ui.base2 },
	}
end

return M

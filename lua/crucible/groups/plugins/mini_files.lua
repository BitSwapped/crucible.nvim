local M = {}

---@param theme table
function M.get(theme)
	local ui = theme.ui

	return {
		MiniFilesBorder = { link = "FloatBorder" },
		MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
		MiniFilesCursorLine = { link = "CursorLine" },
		MiniFilesDirectory = { link = "Directory" },
		MiniFilesFile = { fg = ui.fg_alt },
		MiniFilesNormal = { link = "NormalFloat" },
		MiniFilesTitle = { fg = ui.base6, bg = ui.float_bg },
		MiniFilesTitleFocused = { fg = ui.float_title, bg = ui.float_bg, bold = true },
	}
end

return M

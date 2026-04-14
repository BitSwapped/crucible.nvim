-- crucible/groups/lsp.lua

local M = {}

function M.get(theme)
	local diag = theme.diag
	local ui = theme.ui

	return {

		-- LSP References
		LspReferenceText = { bg = ui.base3 },
		LspReferenceRead = { bg = ui.base3 },
		LspReferenceWrite = { bg = ui.base3, bold = true },

		--  Inlay Hints
		LspInlayHint = { fg = ui.base6, bg = nil, italic = true },

		-- Code Lens
		LspCodeLens = { fg = ui.base5, italic = true },
		LspCodeLensSeparator = { link = "LspCodeLens" },

		-- Signature Help
		LspSignatureActiveParameter = { bg = ui.base3, bold = true },

		-- Info Border
		LspInfoBorder = { link = "FloatBorder" },

		-- Diagnostic Signs (sign column)
		DiagnosticSignError = { fg = diag.error },
		DiagnosticSignWarn = { fg = diag.warn },
		DiagnosticSignInfo = { fg = diag.info },
		DiagnosticSignHint = { fg = diag.hint },
		DiagnosticSignOk = { fg = diag.ok },

		-- Diagnostic Base
		DiagnosticError = { fg = diag.error },
		DiagnosticWarn = { fg = diag.warn },
		DiagnosticInfo = { fg = diag.info },
		DiagnosticHint = { fg = diag.hint },
		DiagnosticOk = { fg = diag.ok },

		-- Diagnostic Virtual Text
		DiagnosticVirtualTextError = { fg = diag.error, bg = diag.error_bg, italic = true },
		DiagnosticVirtualTextWarn = { fg = diag.warn, bg = diag.warn_bg, italic = true },
		DiagnosticVirtualTextInfo = { fg = diag.info, bg = diag.info_bg, italic = true },
		DiagnosticVirtualTextHint = { fg = diag.hint, bg = diag.hint_bg, italic = true },
		DiagnosticVirtualTextOk = { fg = diag.ok, bg = diag.ok_bg, italic = true },

		-- Diagnostic Underlines
		DiagnosticUnderlineError = { undercurl = true, sp = diag.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = diag.warn },
		DiagnosticUnderlineInfo = { undercurl = true, sp = diag.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = diag.hint },
		DiagnosticUnderlineOk = { undercurl = true, sp = diag.ok },

		-- Diagnostic Floats
		DiagnosticFloatingError = { fg = diag.error },
		DiagnosticFloatingWarn = { fg = diag.warn },
		DiagnosticFloatingInfo = { fg = diag.info },
		DiagnosticFloatingHint = { fg = diag.hint },
		DiagnosticFloatingOk = { fg = diag.ok },
	}
end

return M

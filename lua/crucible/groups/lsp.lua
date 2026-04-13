-- crucible/groups/lsp.lua

local M = {}

function M.get(theme)
	local syn = theme.syn
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
		DiagnosticSignOk = { fg = syn.green },

		-- Diagnostic Base
		DiagnosticError = { fg = diag.error },
		DiagnosticWarn = { fg = diag.warn },
		DiagnosticInfo = { fg = diag.info },
		DiagnosticHint = { fg = diag.hint },
		DiagnosticOk = { fg = syn.green },

		-- Diagnostic Virtual Text
		DiagnosticVirtualTextError = { fg = diag.error, bg = diag.error_bg, italic = true },
		DiagnosticVirtualTextWarn = { fg = diag.warn, bg = diag.warn_bg, italic = true },
		DiagnosticVirtualTextInfo = { fg = diag.info, bg = diag.info_bg, italic = true },
		DiagnosticVirtualTextHint = { fg = diag.hint, bg = diag.hint_bg, italic = true },
		DiagnosticVirtualTextOk = { fg = syn.green, bg = diag.hint_bg, italic = true },

		-- Diagnostic Underlines
		DiagnosticUnderlineError = { undercurl = true, sp = diag.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = diag.warn },
		DiagnosticUnderlineInfo = { undercurl = true, sp = diag.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = diag.hint },
		DiagnosticUnderlineOk = { undercurl = true, sp = syn.green },

		-- Diagnostic Floats
		DiagnosticFloatingError = { fg = diag.error },
		DiagnosticFloatingWarn = { fg = diag.warn },
		DiagnosticFloatingInfo = { fg = diag.info },
		DiagnosticFloatingHint = { fg = diag.hint },
		DiagnosticFloatingOk = { fg = syn.green },

		-- Legacy LspDiagnostics
		LspDiagnosticsDefaultError = { fg = diag.error },
		LspDiagnosticsDefaultWarning = { fg = diag.warn },
		LspDiagnosticsDefaultInformation = { fg = diag.info },
		LspDiagnosticsDefaultHint = { fg = diag.hint },

		LspDiagnosticsError = { fg = diag.error },
		LspDiagnosticsWarning = { fg = diag.warn },
		LspDiagnosticsInformation = { fg = diag.info },
		LspDiagnosticsHint = { fg = diag.hint },

		LspDiagnosticsVirtualTextError = { fg = diag.error, bg = diag.error_bg, italic = true },
		LspDiagnosticsVirtualTextWarning = { fg = diag.warn, bg = diag.warn_bg, italic = true },
		LspDiagnosticsVirtualTextInformation = { fg = diag.info, bg = diag.info_bg, italic = true },
		LspDiagnosticsVirtualTextHint = { fg = diag.hint, bg = diag.hint_bg, italic = true },

		LspDiagnosticsUnderlineError = { undercurl = true, sp = diag.error },
		LspDiagnosticsUnderlineWarning = { undercurl = true, sp = diag.warn },
		LspDiagnosticsUnderlineInformation = { undercurl = true, sp = diag.info },
		LspDiagnosticsUnderlineHint = { undercurl = true, sp = diag.hint },

		-- Semantic Token Types
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.decorator"] = { link = "@attribute" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.type.macro"] = { link = "@function.macro" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type.definition" },
		["@lsp.type.variable"] = { link = "@variable" },

		-- Semantic Token Modifiers
		-- readonly
		["@lsp.typemod.variable.readonly"] = { fg = syn.constant },
		-- globals
		["@lsp.typemod.variable.global"] = { fg = syn.constant, bold = true },
		-- defaultLibrary
		["@lsp.typemod.variable.defaultLibrary"] = { fg = syn.variable_builtin, italic = true },
		["@lsp.typemod.function.defaultLibrary"] = { fg = syn.builtin, italic = true },
		["@lsp.typemod.type.defaultLibrary"] = { fg = syn.builtin, italic = true },
		-- static class members
		["@lsp.typemod.property.static"] = { fg = syn.constant, italic = true },
		-- deprecated
		["@lsp.typemod.variable.deprecated"] = { fg = syn.comment, strikethrough = true },
		["@lsp.typemod.function.deprecated"] = { fg = syn.comment, strikethrough = true },
	}
end

return M

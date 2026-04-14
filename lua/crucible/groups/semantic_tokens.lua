-- crucible/groups/semantic_tokens.lua
-- Layer 3.5: LSP Semantic Token highlights
-- Links to treesitter.lua @-groups for additive inheritance.
-- Each entry is annotated with what :Inspect shows in Neovim.

local M = {}
local util = require("crucible.util")

---@param theme table
function M.get(theme)
	local syn = theme.syn
	local ui = theme.ui
	local diag = theme.diag

	-- stylua: ignore
  return {
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.boolean"] = { link = "@boolean" },
		["@lsp.type.builtinType"] = { link = "@type.builtin" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.interface"] = { fg = util.blend(syn.blue, ui.fg, 0.65) },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeAlias"] = { link = "@type.definition" },
		["@lsp.type.typeParameter"] = { link = "@type.definition" },
		["@lsp.type.generic"] = { fg = util.blend(syn.type, ui.fg, 0.55) },
		["@lsp.type.lifetime"] = { fg = util.blend(syn.special, ui.fg, 0.6), italic = true },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.macro"] = { link = "@function.macro" },
		["@lsp.typemod.variable.callable"] = { link = "@function" },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.type.variable"] = {},
		["@lsp.typemod.variable.injected"] = { link = "@variable" },
		["@lsp.typemod.variable.readonly"] = { fg = syn.constant },
		["@lsp.typemod.variable.global"] = { fg = syn.constant, bold = true },
		["@lsp.typemod.variable.static"] = { link = "@constant" },
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
		["@lsp.typemod.variable.deprecated"] = { fg = syn.comment, strikethrough = true },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
		["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.escapeSequence"] = { link = "@string.escape" },
		["@lsp.typemod.string.injected"] = { link = "@string" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.typemod.operator.injected"] = { link = "@operator" },
		["@lsp.type.formatSpecifier"] = { fg = syn.interpolation },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.namespace.python"] = { link = "@variable" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.typemod.property.static"] = { fg = syn.constant, italic = true },
		["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
		["@lsp.type.selfTypeKeyword"] = { link = "@type.builtin" },
		["@lsp.type.decorator"] = { link = "@attribute" },
		["@lsp.type.deriveHelper"] = { link = "@attribute" },
		["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
		["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.type.defaultLibrary"] = { fg = util.blend(syn.blue, ui.base6, 0.45) },
		["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = util.blend(syn.blue, ui.base6, 0.45) },
		["@lsp.type.unresolvedReference"] = { undercurl = true, sp = diag.error },
	}
end

return M

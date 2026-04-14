-- crucible/groups/treesitter.lua

local M = {}

function M.get(theme)
	local ui = theme.ui
	local syn = theme.syn
	local diff = theme.diff

	return {

		-- Identifiers
		["@variable"] = { fg = syn.variable },
		["@variable.builtin"] = { fg = syn.variable_builtin },
		["@variable.parameter"] = { fg = syn.parameter, italic = true },
		["@variable.parameter.builtin"] = { fg = syn.variable_builtin, italic = true },
		["@variable.member"] = { fg = syn.property },

		-- Constants
		["@constant"] = { fg = syn.constant },
		["@constant.builtin"] = { fg = syn.constant, bold = true },
		["@constant.macro"] = { fg = syn.preproc },

		-- Modules & labels
		["@module"] = { fg = syn.namespace, italic = true },
		["@module.builtin"] = { fg = syn.builtin },
		["@label"] = { fg = syn.special },

		-- Strings
		["@string"] = { fg = syn.string },
		["@string.documentation"] = { fg = syn.doc_comment, italic = true },
		["@string.regexp"] = { fg = syn.special },
		["@string.escape"] = { fg = syn.special, bold = true },
		["@string.special"] = { fg = syn.interpolation },
		["@string.special.symbol"] = { fg = syn.constant },
		["@string.special.url"] = { fg = syn.cyan, underline = true },
		["@string.special.path"] = { fg = syn.cyan },

		-- Characters
		["@character"] = { fg = syn.string },
		["@character.special"] = { fg = syn.special },

		-- Numbers & booleans
		["@number"] = { fg = syn.number },
		["@number.float"] = { fg = syn.number },
		["@boolean"] = { fg = syn.constant, bold = true },

		-- Functions
		["@function"] = { fg = syn.func },
		["@function.builtin"] = { fg = syn.builtin },
		["@function.call"] = { fg = syn.func },
		["@function.macro"] = { fg = syn.preproc },
		["@function.method"] = { fg = syn.method },
		["@function.method.call"] = { fg = syn.method },

		-- Types
		["@type"] = { fg = syn.type },
		["@type.builtin"] = { fg = syn.type, bold = true },
		["@type.definition"] = { fg = syn.type_definition },
		["@type.qualifier"] = { fg = syn.storage },

		-- Attributes / annotations
		["@attribute"] = { fg = syn.preproc },
		["@attribute.builtin"] = { fg = syn.builtin },

		-- Properties
		["@property"] = { fg = syn.property },

		-- Keywords
		["@keyword"] = { fg = syn.keyword },
		["@keyword.coroutine"] = { fg = syn.keyword_special, italic = true },
		["@keyword.function"] = { fg = syn.keyword },
		["@keyword.operator"] = { fg = syn.operator },
		["@keyword.import"] = { fg = syn.namespace },
		["@keyword.type"] = { fg = syn.type },
		["@keyword.modifier"] = { fg = syn.storage },
		["@keyword.repeat"] = { fg = syn.keyword },
		["@keyword.return"] = { fg = syn.keyword, bold = true },
		["@keyword.debug"] = { fg = syn.debug },
		["@keyword.exception"] = { fg = syn.keyword_special },
		["@keyword.conditional"] = { fg = syn.keyword },
		["@keyword.conditional.ternary"] = { fg = syn.operator },

		-- Punctuation
		["@punctuation.delimiter"] = { fg = syn.delimiter },
		["@punctuation.bracket"] = { fg = syn.delimiter },
		["@punctuation.special"] = { fg = syn.interpolation },

		-- Comments
		["@comment"] = { fg = syn.comment, italic = true },
		["@comment.documentation"] = { fg = syn.doc_comment, italic = true },
		["@comment.error"] = { fg = syn.red, bold = true },
		["@comment.warning"] = { fg = syn.orange, bold = true },
		["@comment.todo"] = { fg = syn.lime, bold = true },
		["@comment.note"] = { fg = syn.teal, bold = true },

		-- Markup (Markdown, HTML, etc.)
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.heading"] = { fg = syn.keyword, bold = true },
		["@markup.heading.1"] = { fg = syn.lime, bold = true },
		["@markup.heading.2"] = { fg = syn.type, bold = true },
		["@markup.heading.3"] = { fg = syn.func, bold = true },
		["@markup.heading.4"] = { fg = syn.method, bold = true },
		["@markup.heading.5"] = { fg = syn.string },
		["@markup.heading.6"] = { fg = syn.comment },
		["@markup.quote"] = { fg = syn.comment, italic = true },
		["@markup.math"] = { fg = syn.cyan },
		["@markup.link"] = { fg = syn.blue, underline = true },
		["@markup.link.label"] = { fg = syn.teal },
		["@markup.link.url"] = { fg = syn.cyan, underline = true },
		["@markup.raw"] = { fg = syn.string },
		["@markup.raw.block"] = { fg = syn.variable_use },
		["@markup.list"] = { fg = syn.keyword },
		["@markup.list.checked"] = { fg = syn.teal },
		["@markup.list.unchecked"] = { fg = syn.comment },

		-- Diffs
		["@diff.plus"] = { fg = diff.add },
		["@diff.minus"] = { fg = diff.delete },
		["@diff.delta"] = { fg = diff.change },

		-- Tags (HTML/XML/JSX)
		["@tag"] = { fg = syn.tag },
		["@tag.builtin"] = { fg = syn.builtin },
		["@tag.attribute"] = { fg = syn.property },
		["@tag.delimiter"] = { fg = syn.delimiter },

		-- Neovim-specific / vimdoc
		["@none"] = {},
		["@conceal"] = { fg = ui.base6 },
	}
end

return M

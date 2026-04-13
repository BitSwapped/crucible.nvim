-- crucible/groups/syntax.lua

local M = {}

---@param theme table  { ui, syn, diag, diff, term }
---@param styles table { comments={}, keywords={}, functions={}, types={} }
function M.get(theme, styles)
	local syn = theme.syn
	local ui = theme.ui
	local s = styles or {}

	return {
		-- Comments
		Comment = {
			fg = syn.comment,
			italic = (s.comments and s.comments.italic) and true or false,
		},

		-- Constants & Literals
		Constant = { fg = syn.constant },
		String = { fg = syn.string },
		Character = { fg = syn.string },
		Number = { fg = syn.number },
		Boolean = { fg = syn.constant },
		Float = { fg = syn.number },

		-- Identifiers & Functions
		Identifier = { fg = syn.variable },
		Function = {
			fg = syn.func,
			bold = (s.functions and s.functions.bold) and true or false,
		},

		-- Keywords & Statements
		Statement = {
			fg = syn.keyword,
			bold = (s.keywords and s.keywords.bold) and true or false,
		},
		Conditional = { link = "Statement" },
		Repeat = { link = "Statement" },
		Label = { link = "Statement" },
		Operator = { fg = syn.operator },
		Keyword = { link = "Statement" },
		Exception = { link = "Statement" },

		-- Types
		Type = {
			fg = syn.type,
			bold = (s.types and s.types.bold) and true or false,
		},
		Typedef = { fg = syn.type_definition },
		StorageClass = { fg = syn.storage },
		Structure = { link = "Type" },

		-- Preprocessor & Directives
		PreProc = { fg = syn.preproc },
		Include = { link = "PreProc" },
		Define = { link = "PreProc" },
		Macro = { link = "PreProc" },
		PreCondit = { link = "PreProc" },

		-- Special Items
		Special = { fg = syn.special },
		SpecialChar = { link = "Special" },
		Tag = { fg = syn.tag },
		Delimiter = { fg = syn.delimiter },
		SpecialComment = {
			fg = syn.doc_comment,
			italic = true,
		},
		Debug = { fg = syn.debug },
		Underlined = { underline = true },

		-- Error
		Error = { fg = syn.red, bold = true },

		-- Ignored / Generic Fallbacks
		Ignore = { fg = ui.bg },
	}
end

return M

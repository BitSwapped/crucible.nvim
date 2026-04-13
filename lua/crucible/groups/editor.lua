-- crucible/groups/editor.lua

local M = {}

---@param theme table
function M.get(theme)
	local ui = theme.ui
	local syn = theme.syn
	local diag = theme.diag
	local diff = theme.diff

	return {
		-- Base Editor
		Normal = { fg = ui.fg, bg = ui.bg },
		NormalFloat = { fg = ui.fg, bg = ui.float_bg },
		NormalNC = { fg = ui.fg, bg = ui.bg },

		-- Floats
		FloatBorder = { fg = ui.float_border, bg = ui.float_bg },
		FloatTitle = { fg = ui.float_title, bold = true },

		-- Cursor
		Cursor = { bg = ui.cursor },
		CursorLine = { bg = ui.cursorline },
		CursorColumn = { bg = ui.cursorline },
		CursorLineNr = { fg = syn.red, bold = true },

		-- Line Nr & Signcolumn
		LineNr = { fg = ui.base5 },
		SignColumn = { bg = ui.bg },

		--  Selection
		Visual = { bg = ui.visual },
		VisualNOS = { bg = ui.visual },

		--  Search & replace
		Search = { fg = ui.search_fg, bg = ui.search_bg, bold = true },
		IncSearch = { fg = ui.search_fg, bg = ui.search_bg, bold = true },
		CurSearch = { fg = ui.search_fg, bg = syn.pink, bold = true },
		Substitute = { fg = ui.bg, bg = syn.pink },

		--  Popup menu
		Pmenu = { fg = ui.pmenu_fg, bg = ui.pmenu_bg },
		PmenuSel = { fg = ui.fg_high, bg = ui.pmenu_sel, bold = true },
		PmenuSbar = { bg = ui.base3 },
		PmenuThumb = { bg = ui.base5 },

		--  Statusline
		StatusLine = { fg = ui.statusline_fg, bg = ui.statusline_bg },
		StatusLineNC = { fg = ui.base6, bg = ui.base1 },

		--  Window separators
		WinSeparator = { fg = ui.border },
		VertSplit = { link = "WinSeparator" },

		--  Tabline
		TabLine = { fg = ui.fg_alt, bg = ui.bg_alt },
		TabLineFill = { bg = ui.bg },
		TabLineSel = { fg = ui.tabline_sel, bg = ui.bg, bold = true },

		--  Titles & messages
		Title = { fg = syn.red, bold = true },
		Question = { fg = syn.teal, bold = true },
		MoreMsg = { fg = syn.teal, bold = true },
		ErrorMsg = { fg = diag.error, bold = true },
		WarningMsg = { fg = diag.warn, bold = true },
		WildMenu = { fg = syn.red, bg = ui.base3 },

		--  Invisible chars
		NonText = { fg = ui.base4 },
		SpecialKey = { fg = ui.base4 },
		Whitespace = { fg = ui.base3 },

		--  Matching brackets
		MatchParen = { fg = syn.red, bold = true, underline = true, sp = syn.red },

		--  Folding
		Folded = { fg = ui.base6, bg = ui.base2 },
		FoldColumn = { fg = ui.base5, bg = ui.bg },

		--  File browser
		Directory = { fg = ui.directory, bold = true },

		--  Spell checking
		SpellBad = { undercurl = true, sp = diag.error },
		SpellCap = { undercurl = true, sp = diag.warn },
		SpellRare = { undercurl = true, sp = diag.info },
		SpellLocal = { undercurl = true, sp = diag.hint },

		--  Diff
		DiffAdd = { bg = diff.add_bg },
		DiffChange = { bg = diff.change_bg },
		DiffDelete = { bg = diff.delete_bg },
		DiffText = { bg = diff.change_bg, bold = true },

		--  Window bar
		WinBar = { fg = ui.fg_high, bold = true },
		WinBarNC = { fg = ui.base6 },

		--  Message area
		MsgArea = { fg = ui.fg },
		MsgSeparator = { fg = ui.border },
	}
end

return M

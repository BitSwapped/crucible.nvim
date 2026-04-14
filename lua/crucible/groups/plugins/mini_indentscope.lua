local M = {}

---@param theme table
function M.get(theme)
	local ui = theme.ui
	local syn = theme.syn

	return {
		MiniIndentscopeSymbol = { fg = syn.pink, nocombine = true },
		MiniIndentscopePrefix = { nocombine = true },
	}
end

return M

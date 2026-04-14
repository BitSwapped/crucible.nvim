local M = {}

---@param theme table
function M.get(theme)
	local syn = theme.syn
	local ui = theme.ui
  -- stylua: ignore
  return {
    MiniIconsGrey   = { fg = ui.base4 },
    MiniIconsPurple = { fg = syn.purple },
    MiniIconsBlue   = { fg = syn.blue },
    MiniIconsAzure  = { fg = syn.teal },
    MiniIconsCyan   = { fg = syn.cyan },
    MiniIconsGreen  = { fg = syn.green },
    MiniIconsYellow = { fg = syn.yellow },
    MiniIconsOrange = { fg = syn.orange },
    MiniIconsRed    = { fg = syn.red },
  }
end

return M

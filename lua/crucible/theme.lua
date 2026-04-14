-- crucible/theme.lua
local util = require("crucible.util")

local M = {}

-- stylua: ignore
-- Semantic alias map 
-- Maps your conceptual names to the raw palette keys
local neutrals = {
  bg0       = "void",
  bg1       = "shadow",
  bg2       = "dusk",
  bg3       = "twilight",
  border    = "fog",
  fg_faint  = "mist",
  fg_dim    = "smoke",
  fg2       = "flux",
  fg1       = "ash",
  fg0       = "chalk",
  fg_bright = "lime",
}

-- stylua: ignore
local accents = {
  red      = "crimson",
  orange   = "copper",
  yellow   = "amber",
  lime     = "citrine",
  green    = "viridian",
  teal     = "jade",
  cyan     = "cyan",
  blue     = "cobalt",
  indigo   = "prussian",
  purple   = "violet",
  magenta  = "mauve",
  pink     = "bloom",
}

--- Resolve a semantic name to its color value from palette
---@param p table       raw palette
---@param name string   semantic key (e.g., "bg0", "red")
---@return string|nil
local function resolve(p, name)
	-- Check neutrals first
	if neutrals[name] then
		return p[neutrals[name]]
	end
	-- Then accents
	if accents[name] then
		return p[accents[name]]
	end
	-- Direct lookup (fallback)
	return p[name]
end

-- stylua: ignore
function M.setup(p)
  -- Build resolved table for easy access
  local c = setmetatable({}, {
    __index = function(_, k) return resolve(p, k) end
  })

  return {
    ui = {
      fg           = c.fg0,
      fg_alt       = c.fg1,
      bg           = c.bg0,
      bg_alt       = c.bg1,

      base0        = c.bg0,
      base1        = c.bg1,
      base2        = c.bg2,
      base3        = c.bg3,
      base4        = c.border,
      base5        = c.fg_faint,
      base6        = c.fg_dim,
      base7        = c.fg2,
      base8        = c.fg1,

      cursor       = c.cyan,
      selection    = c.border,
      highlight    = c.border,
      border       = c.border,

      float_bg     = c.bg1,
      float_border = c.bg3,
      float_title  = c.indigo,

      pmenu_bg     = c.bg2,
      pmenu_sel    = c.bg3,
      pmenu_fg     = c.fg0,

      statusline_bg = c.bg1,
      statusline_fg = c.fg1,

      tabline_sel  = c.indigo,
      directory    = c.blue,

      search_bg    = c.yellow,
      search_fg    = c.bg0,

      visual       = c.bg3,
      cursorline   = c.bg2
    },
    syn = {
      keyword          = c.indigo,
      keyword_special  = c.magenta,
      func             = c.teal,
      method           = c.teal,
      string           = c.green,
      constant         = c.orange,
      number           = c.yellow,
      type             = c.cyan,
      type_definition  = c.fg0,
      storage          = c.blue,
      namespace        = c.blue,
      interpolation    = c.lime,
      special          = c.magenta,
      tag              = c.blue,
      debug            = c.red,
      property         = c.fg1,
      comment          = c.fg_faint,
      doc_comment      = c.fg_dim,
      operator         = c.fg2,
      delimiter        = c.fg_dim,
      preproc          = c.orange,
      builtin          = c.purple,
      parameter        = c.pink,
      variable         = c.fg0,
      variable_use     = c.fg1,
      variable_builtin = c.purple,
      ignore           = c.bg0,

      red      = c.red,
      orange   = c.orange,
      yellow   = c.yellow,
      lime     = c.lime,
      green    = c.green,
      teal     = c.teal,
      cyan     = c.cyan,
      blue     = c.blue,
      indigo   = c.indigo,
      purple   = c.purple,
      magenta  = c.magenta,
      pink     = c.pink,
    },

    diag = {
      error    = c.red,
      warn     = c.yellow,
      info     = c.blue,
      hint     = c.teal,
      ok       = c.green,

      error_bg = util.darken(c.red,    c.bg0, 0.0696),
      warn_bg  = util.darken(c.yellow, c.bg0, 0.0696),
      info_bg  = util.darken(c.blue,   c.bg0, 0.0696),
      hint_bg  = util.darken(c.teal,   c.bg0, 0.0696),
      ok_bg    = util.darken(c.green,   c.bg0, 0.0696),
    },

    diff = {
      add       = c.green,
      change    = c.yellow,
      delete    = c.red,
      add_bg    = util.blend(c.green,  c.bg0, 0.15),
      change_bg = util.blend(c.yellow, c.bg0, 0.15),
      delete_bg = util.blend(c.red,    c.bg0, 0.15),
    },

    term = {
      [0]  = c.bg1,
      [1]  = c.red,
      [2]  = c.green,
      [3]  = c.yellow,
      [4]  = c.blue,
      [5]  = c.magenta,
      [6]  = c.cyan,
      [7]  = c.fg0,
      [8]  = c.border,
      [9]  = c.red,
      [10] = c.green,
      [11] = c.yellow,
      [12] = c.blue,
      [13] = c.magenta,
      [14] = c.cyan,
      [15] = c.fg_bright,
    },
  }
end

return M

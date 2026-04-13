-- crucible/init.lua

local config = require("crucible.config")
local palette = require("crucible.palette")
local theme = require("crucible.theme")

local M = {}

--- Load and apply the Crucible colorscheme
---@param opts table|nil  user configuration overrides
function M.load(opts)
	--  Setup/merge configuration
	config.setup(opts)

	--  Get configured flavor
	local flavor = config.get("flavor")

	--  Clear existing highlights
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "crucible"

	--  Load raw palette
	local p = palette.get(flavor)

	--  Build semantic theme
	local t = theme.setup(p)

	--  Get styles from config
	local styles = config.get("styles") or {}

	--  Collect all highlight groups
	local highlights = require("crucible.groups").get(t, styles)

	--  Apply highlights to Neovim
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	--  Set terminal colors
	if t.term then
		for i = 0, 15 do
			vim.g["terminal_color_" .. i] = t.term[i]
		end
	end
end

return M

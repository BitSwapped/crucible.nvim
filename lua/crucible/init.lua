-- crucible/init.lua

local config = require("crucible.config")
local palette = require("crucible.palette")
local theme = require("crucible.theme")

local M = {}
--- Configure crucible.  Must be called before loading the colorscheme.
---@param opts? table
function M.setup(opts)
	config.setup(opts)
end

--- Load the colorscheme for `flavor`.
---@param flavor? string  defaults to config.flavor
function M.load(flavor)
	local o = config.get()
	flavor = flavor or o.flavor

	-- prepare vim options
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "crucible-" .. flavor

	-- get palette for the active flavor
	local p = palette.get(flavor)

	-- build theme
	local t = theme.setup(p)

	-- get styles from config
	local styles = config.get("styles") or {}

	-- collect all highlight groups
	local highlights = require("crucible.groups").get(t, styles)

	-- apply highlights
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	-- apply terminal colours
	if t.term then
		for i = 0, 15 do
			local color = t.term[i]
			if color then
				vim.g["terminal_color_" .. i] = color
			end
		end
	end
end

return M

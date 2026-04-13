-- crucible/config.lua

local M = {}

local defaults = {
	flavor = "forge",
	styles = {
		comments = { italic = true },
		keywords = { bold = true },
		functions = {},
		types = { bold = true },
	},
}

-- Internal config state
local config = vim.tbl_deep_extend("force", {}, defaults)

--- Apply user configuration options
function M.setup(opts)
	if opts then
		config = vim.tbl_deep_extend("force", config, opts)
	end
	return config
end

--- Get current config value, or entire config table
function M.get(key)
	if key then
		return config[key]
	end
	return config
end

return M

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
local config = nil

--- Initialize config with defaults
local function init_config()
	if not config then
		config = vim.tbl_deep_extend("force", {}, defaults)
	end
	return config
end

--- Apply user configuration options
function M.setup(opts)
	local cfg = init_config()
	if opts then
		config = vim.tbl_deep_extend("force", cfg, opts)
	end
	return config
end

--- Get current config value, or entire config table
function M.get(key)
	local cfg = init_config()
	if key then
		return cfg[key]
	end
	return cfg
end

return M

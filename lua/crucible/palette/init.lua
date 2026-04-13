-- crucible/palette.lua

local M = {}

-- Default flavor if none specified
local default_flavor = "forge"

--- Get a flavor's color palette
---@param flavor string|nil  "cast", "forge", or "quench" (defaults to "forge")
---@return table            the raw palette table with all hex colors
function M.get(flavor)
	-- Use provided flavor, or fall back to default
	local flvr = flavor or default_flavor

	-- Try to load the requested flavor file
	-- e.g., require("crucible.palette.cast")
	local ok, palette = pcall(require, "crucible.palette." .. flvr)

	-- If that failed (file doesn't exist), try the default instead
	if not ok then
		ok, palette = pcall(require, "crucible.palette." .. default_flavor)
	end

	return palette
end

return M

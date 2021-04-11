local utils = require('utils')

-- Scan lua directory and require files.
-- Files that needs to be imported first are marked with @ prefix in filename
local ignore = { 'utils.lua' }
local modules = utils.scandir("~/.config/nvim/lua", ignore)

for _, module in ipairs(modules) do
	local module_name = module:gsub('.lua', '')
	require(module_name)
end

-- @TODO:
-- Hot reload config while editing files

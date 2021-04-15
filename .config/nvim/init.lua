local utils = require('utils')

local ignore = { 'utils.lua' }
local modules = utils.scandir("~/.config/nvim/lua", ignore)
-- Files that needs to be imported first are marked with @ prefix in filename
for _, module in ipairs(modules) do
  local module_name = module:gsub('.lua', '') -- Remove the .lua file extension
  require(module_name)
end
-- @TODO:
-- Hot reload config while editing files

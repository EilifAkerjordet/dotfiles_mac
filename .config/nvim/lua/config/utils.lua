local utils = {}

function utils.define_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    vim.cmd('augroup ' .. group_name)
    vim.cmd('autocmd!')

    for _, def in pairs(definition) do
      local command = table.concat(vim.tbl_flatten { 'autocmd', def }, ' ')
      vim.cmd(command)
    end

    vim.cmd('augroup END')
  end
end

function utils.has_value(tab, val)
  for _, value in ipairs(tab) do if value == val then return true end end
  return false
end

function utils.has_key(tab, val)
  for key, _ in ipairs(tab) do if key == val then return true end end
  return false
end

function utils.reload_module(module_name, starts_with_only)
  local matcher
  if not starts_with_only then
    matcher = function(pack)
      return string.find(pack, module_name, 1, true)
    end
  else
    matcher = function(pack)
      return string.find(pack, '^' .. module_name)
    end
  end

  for pack, _ in pairs(package.loaded) do if matcher(pack) then package.loaded[pack] = nil end end
end

-- Scans a dir and returns filenames
function utils.scandir(dirname, ignore)
  ignore = ignore or {}
  local callit = os.tmpname()
  os.execute("ls " .. dirname .. " >" .. callit)
  local f = io.open(callit, "r")
  local file_string = f:read("*all")
  f:close()
  os.remove(callit)

  -- Create results array
  local results = {}
  local from = 1
  local delim_from, delim_to = string.find(file_string, "\n", from)
  while delim_from do
    local file = string.sub(file_string, from, delim_from - 1)

    -- If ignore array is passed, disregard file if in ignore.
    if not ignore then table.insert(results, file) end
    if ignore and not utils.has_value(ignore, file) then table.insert(results, file) end

    from = delim_to + 1
    delim_from, delim_to = string.find(file_string, "\n", from)
  end
  return results
end

-- @TODO
-- This kills lualine and makes all strings text italic
utils.reload_config = function()
  utils.reload_module("config", true)
  require("config")
  print('Reloaded!')
end

function utils.flattenOneLevel (e)
    local result = {}
			for _,v in pairs(e) do
				for x,y in pairs(v) do
					result[x] = y
				end
			end
    return result
end

function utils.empty_not_empty_tbl_keys(tbl)
	local empty = {}
	local notEmpty = {}

	for k, _ in pairs(tbl) do
		if vim.tbl_isempty(tbl[k]) then
			table.insert(empty, k)
		else
			table.insert(notEmpty, k)
		end
	end

	return empty, notEmpty
end

function utils.merge_lists(a, b)
	local result = {}

	for _, v in pairs(a) do
		table.insert(result, v)
	end

	for _, v in pairs(b) do
		table.insert(result, v)
	end

	return result
end

return utils

local utils = {}

local function has_value (tab, val)
	for _, value in ipairs(tab) do
		if value == val then
			return true
		end
	end
	return false
end


function utils.reload_module (module_name, starts_with_only)
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

  for pack, _ in pairs(package.loaded) do
    if matcher(pack) then
      package.loaded[pack] = nil
    end
  end
end

-- Scans a dir and returns filenames
-- Figure out ignore pattern and remove .lua from the end
function utils.scandir (dirname, ignore)
  ignore = ignore or {}
	local callit = os.tmpname()
	os.execute("ls "..dirname .." >"..callit)
	local f = io.open(callit,"r")
	local file_string = f:read("*all")
	f:close()
	os.remove(callit)

	-- Create results array
	local results = {}
	local from  = 1
	local delim_from, delim_to = string.find(file_string, "\n", from)
	while delim_from do
		local file = string.sub(file_string, from , delim_from-1)

		if not ignore then table.insert(results, file) end
		if ignore and not has_value(ignore, file) then
			table.insert(results, file)
		end

		from  = delim_to + 1
		delim_from, delim_to = string.find(file_string, "\n", from)
	end
	return results
end

return utils

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tokyonight",
  transparency = true,
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
  tabufline = {
    enabled= false
  },

  nvdash = {
    load_on_startup = true,
  }
}

return M

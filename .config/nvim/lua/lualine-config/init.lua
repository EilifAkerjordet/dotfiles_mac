require('lualine').setup{
	options = {
		theme = 'material',
		section_separators = {'', ''},
		component_separators = {'', ''},
		icons_enabled = true,
		padding = 2
	},
	sections = {
		lualine_a = { {'mode', upper = true} },
		lualine_b = { {'branch', icon = ''} },
		lualine_c = { {'filename', file_status = true} },
		lualine_x = { 'filetype', 'fileformat', 'encoding' },
		lualine_y = { '' }, -- used to be 'progress'
		lualine_z = { 'location' },
	},
	inactive_sections = {
		lualine_a = {  },
		lualine_b = {  },
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {  },
		lualine_z = {   }
	},
	extensions = { 'fzf' }
}

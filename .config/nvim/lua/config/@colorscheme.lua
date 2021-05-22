---------- MATERIAL -------------
vim.g.material_style = 'darker'
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = false

vim.g.material_contrast = true
vim.g.material_borders = false
vim.g.material_disable_background = true
vim.g.material_variable_color = "#BOBEC5"

---------- TOKYO NIGHT -------------
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_transparent = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd [[colorscheme tokyonight]]

-- require('material').set()

vim.cmd('highlight QuickScopePrimary guifg=#afff5f gui=underline ctermfg=155 cterm=underline')
vim.cmd('highlight QuickScopeSecondary guifg=#5fffff gui=underline ctermfg=81 cterm=underline')

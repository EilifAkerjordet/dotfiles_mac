vim.g.NERDCreateDefaultMappings = 0
vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1
vim.g.NERDDefaultAlign = 'left'
vim.g.NERDAltDelims_java = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1

--- Keybindings
vim.api.nvim_set_keymap('n', '<Leader>cc', '<plug>NERDCommenterToggle', {})
vim.api.nvim_set_keymap('v', '<Leader>cc', '<plug>NERDCommenterToggle', {})

vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_enable_bw = 1

--- Keybindings
vim.api.nvim_set_keymap('n', '<Leader>k', ':RnvimrToggle<CR>', {})

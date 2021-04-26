--- Keybindings
vim.api.nvim_set_keymap('n', '<Leader>gc', ':G commit<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>ga', ':G add .<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>g;', ':G pull<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gp', ':G push<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gj', ':diffget //3<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gf', ':diffget //2<CR>', {})

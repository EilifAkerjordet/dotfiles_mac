--- Set Map Leader
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Reload nvim config
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>lua require("config.utils").reload_config()<CR>', { noremap = true })

--- Save, quit, savequit
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true })

--- Easier -> for php
vim.api.nvim_set_keymap('i', '<C-o>', '->', { noremap = true, silent = true })

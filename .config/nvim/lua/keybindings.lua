--- Set Map Leader
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = ","

--- Source init.lua (not working)
vim.api.nvim_set_keymap('n', '<Leader>sv', ':luafile $MYVIMRC<CR>', {})

--- Save, quit, savequit
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':wq<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true })

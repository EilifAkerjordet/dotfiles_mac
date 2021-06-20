local opts = { noremap = true, silent = true }
--- Keybindings
vim.api.nvim_set_keymap('n', '<Leader>gs', ':G<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gc', ':G commit<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>ga', ':G add .<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>g;', ':G pull<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gp', ':G push<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gj', ':diffget //3<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gf', ':diffget //2<CR>', opts)

-- Telescope git
vim.api.nvim_set_keymap("n", "<Leader>gw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>gb", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>vc", "<cmd>lua require('telescope.builtin').git_commits()<CR>", opts)

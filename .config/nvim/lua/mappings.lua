require "nvchad.mappings"

-- Add maps
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-w>", "<cmd> wq! <cr>")
map({ "n", "i", "v" }, "<C-q>", "<cmd> q! <cr>")

-- Ranger nvim --
map({ "n" }, "<leader>K", "<cmd> lua require('ranger-nvim').open(true) <cr>")

-- Toggleterm --
map("n", "<C-t>", "<cmd> ToggleTerm <cr>")

-- Telescope --
map("n", "<C-p>", "<cmd> lua require('telescope.builtin').find_files() <cr>")
map("n", "<C-x>", "<cmd> lua require('telescope.builtin').live_grep() <cr>")
map("n", "/", "<cmd> lua require('telescope.builtin').current_buffer_fuzzy_find() <cr>")

-- Tmux Navigate --
map("n", "<C-h>", "<cmd> lua require('nvim-tmux-navigation').NvimTmuxNavigateLeft() <cr>")
map("n", "<C-l>", "<cmd> lua require('nvim-tmux-navigation').NvimTmuxNavigateRight() <cr>")
map("n", "<C-j>", "<cmd> lua require('nvim-tmux-navigation').NvimTmuxNavigateDown() <cr>")
map("n", "<C-k>", "<cmd> lua require('nvim-tmux-navigation').NvimTmuxNavigateUp() <cr>")

-- Disable mappings
-- local nomap = vim.keymap.del
-- Disable cycle through autocomplete
-- nomap("i", "<Tab>")
-- nomap("i", "<S-Tab>")

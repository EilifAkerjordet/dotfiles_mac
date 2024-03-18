require "nvchad.mappings"

-- Add maps
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-w>", "<cmd> wq! <cr>")
map({ "n", "i", "v" }, "<C-q>", "<cmd> q! <cr>")

-- Telescope --
local builtin = require('telescope.builtin')
map('n', '<C-p>', builtin.find_files, {})
map('n', '<C-x>', builtin.live_grep, {})

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<Tab>")
nomap("n", "<S-Tab>")

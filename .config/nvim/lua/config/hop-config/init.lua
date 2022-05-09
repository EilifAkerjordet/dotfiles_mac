require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

vim.api.nvim_set_keymap('n', 's', "<cmd>lua require'hop'.hint_words()<cr>", { silent = true, noremap = true })

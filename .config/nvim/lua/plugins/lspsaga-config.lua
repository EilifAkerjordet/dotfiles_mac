local saga = require 'lspsaga'
saga.init_lsp_saga()

-- Keybindings
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "gh", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
vim.api.nvim_set_keymap("n", "ga", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
vim.api.nvim_set_keymap("v", "ga", ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
vim.api.nvim_set_keymap("n", "gf", "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
vim.api.nvim_set_keymap("n", "gs", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", opts)
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", opts)
vim.api.nvim_set_keymap("n", "K", "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
vim.api.nvim_set_keymap("n", "[e", "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]e", "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", opts)

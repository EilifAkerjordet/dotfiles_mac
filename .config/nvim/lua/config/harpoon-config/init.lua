-- " These functions are stored in harpoon.  A plugn that I am developing
-- nnoremap <leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
-- nnoremap <leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
-- nnoremap <leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
-- nnoremap <leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>
--
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<Leader>a', '<cmd>lua require("harpoon.mark").add_file()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
vim.api.nvim_set_keymap('n', 'Q', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', opts)
vim.api.nvim_set_keymap('n', 'W', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', opts)
vim.api.nvim_set_keymap('n', 'E', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', opts)
vim.api.nvim_set_keymap('n', 'R', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', opts)

require("harpoon").setup()

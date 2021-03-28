vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }
-- vim.g.completion_sorting = "alphabet"
vim.g.completion_enable_snippet = 'vim-vsnip'

vim.g.completion_auto_change_source = 1
vim.g.completion_chain_complete_list = {
    {complete_items = {'lsp'}},
    {complete_items = {'snippet'}},
    {mode = '<c-p>'},
    {mode= '<c-n>'}
	}

--- Map <C-j> and <C-k> to cycle through autocomplete options
local function t(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end
function _G.c_j()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<C-j>'
end
function _G.c_k()
    return vim.fn.pumvisible() == 1 and t'<C-p>' or t'<C-k>'
end
vim.api.nvim_set_keymap('i', '<C-j>', 'v:lua.c_j()', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<C-k>', 'v:lua.c_k()', {expr = true, noremap = true})

--- Use <CR> for completion only when menu is available
vim.g.completion_confirm_key = ""
vim.cmd([[
  inoremap <expr> <cr>    pumvisible() ? "\<Plug>(completion_confirm_completion)" : "\<cr>"
]])

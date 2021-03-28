vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }
vim.g.completion_enable_snippet = 'UltiSnips'

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
-- function _G.cr()
--   -- return vim.fn.pumvisible() == 1 and t'\\<Plug>(completion_confirm_completion)' or t'\\<CR>'
--   if vim.fn.pumvisible() == 1 then
--     return t'<Plug>completion_confirm_completion'
--   else
--     return t'<CR>'
--   end
-- end
--
-- vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.cr()', { expr = true })

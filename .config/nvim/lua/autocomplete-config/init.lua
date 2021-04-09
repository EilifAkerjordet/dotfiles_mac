require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        path = {kind = "  "},
        buffer = {kind = "  "},
        calc = {kind = "  "},
        vsnip = {kind = "  "},
        nvim_lsp = {kind = "  "},
        nvim_lua = {kind = "  "},
        spell = {kind = "  "},
        tags = false,
        treesitter = {kind = "  "},
        emoji = {kind = " ﲃ ", filetypes={"markdown", "text"}}
        -- for emoji press : (idk if that in compe tho)
    }
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

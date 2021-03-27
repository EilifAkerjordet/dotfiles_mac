--- Set Map Leader
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = ","

--- Map <C-j> and <C-k> to cycle through
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

--- Source init.lua (not working)
vim.api.nvim_set_keymap('n', '<Leader>sv', ':luafile $MYVIMRC<CR>', {})

--- Toggle Ranger
vim.api.nvim_set_keymap('n', '<Leader>k', ':RnvimrToggle<CR>', {})

--- Save, quit, savequit
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':wq<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true })

--- VIMUX
vim.api.nvim_set_keymap('n', '<Leader>vp', ':VimuxPromptCommand<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>vl', ':VimuxRunLastCommand<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>vi', ':VimuxInspectRunner<CR>', {})

--- Git
vim.api.nvim_set_keymap('n', '<Leader>gs', ':G<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gc', ':G commit<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>ga', ':G add .<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>g;', ':G pull<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gp', ':G push<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gj', ':diffget //3<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gf', ':diffget //2<CR>', {})

-- NerdCommenter
vim.api.nvim_set_keymap('n', '<Leader>cc', '<plug>NERDCommenterToggle', {})
vim.api.nvim_set_keymap('v', '<Leader>cc', '<plug>NERDCommenterToggle', {})

--- Vim sneak
vim.api.nvim_set_keymap('n', 's', '<Plug>Sneak_s', {})
vim.api.nvim_set_keymap('n', 'S', '<Plug>Sneak_S', {})

vim.api.nvim_set_keymap('x', 's', '<Plug>Sneak_s', {})
vim.api.nvim_set_keymap('x', 'S', '<Plug>Sneak_S', {})

vim.api.nvim_set_keymap('o', 's', '<Plug>Sneak_s', {})
vim.api.nvim_set_keymap('o', 'S', '<Plug>Sneak_S', {})

--- Emmet
function _G.c_l()
    return vim.fn["emmet#expandAbbrIntelligent"]("\\<C-l>")
end
vim.api.nvim_set_keymap('i', '<C-l>', 'v:lua.c_l()', { expr = true })
vim.api.nvim_set_keymap('n', '<C-l>', 'v:lua.c_l()', { expr = true })

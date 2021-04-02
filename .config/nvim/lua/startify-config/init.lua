vim.g.startify_custom_header = {
'   ██╗███╗  ██╗██╗████████╗    ██╗     ██╗   ██╗ █████╗ ',
'   ██║████╗ ██║██║╚══██╔══╝    ██║     ██║   ██║██╔══██╗',
'   ██║██╔██╗██║██║   ██║       ██║     ██║   ██║███████║',
'   ██║██║╚████║██║   ██║       ██║     ██║   ██║██╔══██║',
'   ██║██║ ╚███║██║   ██║   ██╗ ███████╗╚██████╔╝██║  ██║',
'   ╚═╝╚═╝  ╚══╝╚═╝   ╚═╝   ╚═╝ ╚══════╝ ╚═════╝ ╚═╝ ╚═╝'
}

vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0
vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_change_to_dir = 1
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.api.nvim_set_keymap('n', '<Leader>h', ':Startify<CR>', {})

vim.api.nvim_exec(
    'let startify_lists = [ { \'type\': \'files\',     \'header\': [\'   Files\'] }, { \'type\': \'sessions\',  \'header\': [\'   Sessions\'] },    { \'type\': \'bookmarks\', \'header\': [\'   Bookmarks\'] },                                                                   ]',
    true)

vim.api.nvim_exec(
    'let startify_bookmarks = [ { \'c\': \'~/.config\' }, { \'a\': \'~/.config/alacritty/alacritty.yml\' }, { \'y\': \'~/.config/yabai/yabairc\' }, { \'s\': \'~/.config/skhd/skhdrc\' }, { \'v\': \'~/.config/nvim/init.lua\' }, { \'z\': \'~/.zshrc\' }, { \'t\': \'~/.tmux.conf\' } ]',
    true)

vim.cmd([[
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])

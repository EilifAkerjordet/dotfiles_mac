local utils = require('config.utils')

utils.define_augroups({
  _qs_colors = {
    { 'ColorScheme', '*', 'highlight QuickScopePrimary guifg=#afff5f gui=underline ctermfg=155 cterm=underline' },
    { 'ColorScheme', '*', 'highlight QuickScopeSecondary guifg=#5fffff gui=underline ctermfg=81 cterm=underline' }
  },
  _update_transparency = {
    { 'ColorScheme', '*', 'hi Normal guibg=NONE ctermbg=NONE' }, { 'ColorScheme', '*', 'hi LineNr guibg=NONE ctermbg=NONE' },
    { 'ColorScheme', '*', 'hi SignColumn guibg=NONE ctermbg=NONE' }, { 'ColorScheme', '*', 'hi EndOfBuffer guibg=NONE ctermbg=NONE' }
  },
  _svxMdSyntax = { { 'BufNewFile,BufRead', '*.svx', 'set syntax=markdown' } },
  _goyo_enter = { { 'User', 'GoyoEnter', 'set cursorline!' } }
})

local utils = require('utils')

utils.define_augroups({
  _qs_colors = {
    { 'ColorScheme', '*', 'highlight QuickScopePrimary guifg=#afff5f gui=underline ctermfg=155 cterm=underline' },
    { 'ColorScheme', '*', 'highlight QuickScopeSecondary guifg=#5fffff gui=underline ctermfg=81 cterm=underline' }
  },
  _update_transparency = {
    { 'ColorScheme', '*', 'hi Normal guibg=NONE ctermbg=NONE' }, { 'ColorScheme', '*', 'hi LineNr guibg=NONE ctermbg=NONE' },
    { 'ColorScheme', '*', 'hi SignColumn guibg=NONE ctermbg=NONE' }, { 'ColorScheme', '*', 'hi EndOfBuffer guibg=NONE ctermbg=NONE' }
  },
  _pencil = {
    { 'FileType', 'markdown', 'setlocal complete' }, { 'FileType', 'markdown', 'setlocal spell' }, { 'FileType', 'markdown', 'SoftPencil' },
    { 'FileType', 'text', 'SoftPencil' }
    -- { 'BufEnter', 'markdown', 'colorscheme pencil' }, { 'BufEnter', 'text', 'colorscheme pencil' }

  },
  _goyo_enter = { { 'User', 'GoyoEnter', 'set cursorline!' } }
})

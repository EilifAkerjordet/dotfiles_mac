call plug#begin('~/local/share/nvim/plugged')
 Plug 'neovim/nvim-lspconfig'
 Plug 'nvim-lua/completion-nvim'
 Plug 'kabouzeid/nvim-lspinstall'
 Plug 'glepnir/lspsaga.nvim'
 Plug 'alampros/vim-styled-jsx'
 Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
 Plug 'sheerun/vim-polyglot'
 Plug 'SirVer/ultisnips'
 Plug 'lervag/vimtex'
 Plug 'Konfekt/FastFold'
 Plug 'matze/vim-tex-fold'
 Plug 'mattn/emmet-vim'
 Plug 'w0rp/ale'
 Plug 'hail2u/vim-css3-syntax'
 Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
 Plug 'sbdchd/neoformat'
 Plug 'tpope/vim-sensible'
 Plug 'hzchirs/vim-material'
 Plug 'vim-airline/vim-airline'
 Plug 'justinmk/vim-sneak'
 Plug 'tpope/vim-surround'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'benmills/vimux'
 Plug 'mlaursen/vim-react-snippets'
 Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
 Plug 'preservim/nerdcommenter'
 Plug 'norcalli/nvim-colorizer.lua'
 Plug 'jiangmiao/auto-pairs'
 Plug 'lgeorget/maude.vim'
 Plug 'ThePrimeagen/vim-be-good', { 'do': './install.sh' }
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-telescope/telescope-fzy-native.nvim'
 Plug 'airblade/vim-rooter'
 Plug 'vimwiki/vimwiki'
 Plug 'tpope/vim-fugitive'
 Plug 'unblevable/quick-scope'
 Plug 'kevinhwang91/rnvimr', {'branch': 'main'}
 Plug 'miyakogi/seiya.vim'
 Plug 'turbio/bracey.vim'
 Plug 'yuttie/comfortable-motion.vim'
 " NEEDS TO BE LAST TO LOAD "
 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'ryanoasis/vim-devicons'
 " NEEDS TO BE LAST TO LOAD "
call plug#end()

luafile ~/.config/nvim/lua/plugins/lspsaga-config.lua
luafile ~/.config/nvim/lua/plugins/lspinstall-config.lua
luafile ~/.config/nvim/lua/plugins/telescope-config.lua

" AUTOCOMPLETE
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
set shortmess+=c
set completeopt=menuone,noinsert,noselect
" Use <C-j> and <C-k> to navigate through popup menu
inoremap <silent><expr> <C-j>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<C-j>" :
      \ coc#refresh()
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-h>"

" AUTOCOMPLETE

set number
set relativenumber
set expandtab
set sts=2
set sw=2
set cursorline
set laststatus=2
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set signcolumn=no
set splitbelow splitright
set laststatus=0
set noshowmode

let g:bufferline_echo = 0

let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'javascript': ['prettier', 'eslint', 'standard'],
\   'javascriptreact': ['prettier', 'eslint', 'standard'],
\}

let g:ale_linters = {}
let g:ale_linters.typescript = ['eslint', 'tsserver']
let g:ale_linters.typescriptreact = ['eslint', 'tsserver']
let g:ale_linters.javascript = ['prettier', 'eslint', 'standard']
let g:ale_linters.javascriptreact = ['prettier', 'eslint', 'standard']
let g:ale_typescript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

map <Leader>af :ALEFix<CR>


let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
let g:seiya_auto_enable = 1
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
" Make Ranger to be hialendar with google cal
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:bracey_server_allow_remote_connections = 1

let R_auto_start=1

let R_in_buffer = 0
let R_source = '/home/eilif/local/share/nvim/plugged/Nvim-R/R/tmux_split.vim'

 " KEY MAPS START
let mapleader = " "
let maplocalleader = ','

nnoremap <C-s> :w<CR>
nnoremap <C-w> :wq<CR>
nnoremap <C-q> :q!<CR>

map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>

nmap <Leader>gs :G<CR>
nmap <Leader>gc :G commit<CR>
nmap <Leader>ga :G add .<CR>
nmap <Leader>g; :G pull<CR>
nmap <Leader>gp :G push<CR>
nmap <Leader>gj :diffget //3<CR>
nmap <Leader>gf :diffget //2<CR>

nmap <Leader>rv :source $MYVIMRC<CR>
nmap <Leader>vbg :VimBeGood<CR>
nmap <Leader>k :RnvimrToggle<CR>

" Vim wiki

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
" 2-character Sneak (default)
    nmap s <Plug>Sneak_s
    nmap S <Plug>Sneak_S
" visual-mode
    xmap s <Plug>Sneak_s
    xmap S <Plug>Sneak_S
" operator-pending-mode
    omap s <Plug>Sneak_s
    omap S <Plug>Sneak_S
" KEY MAPS END
"

"""""""""""""""""""FZF""""""""""""""""""""""""""""""""""
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.5 } }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"""""""""""""""""""FZF""""""""""""""""""""""""""""""""""
"""""""""""""""""""EMMET"""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-c>'
nmap <expr> <C-l> emmet#expandAbbrIntelligent("\<C-l>")
imap <expr> <C-l> emmet#expandAbbrIntelligent("\<C-l>")
"""""""""""""""""""EMMET"""""""""""""""""""""""""""""
"""""""""""""""""""ANy-JUMP"""""""""""""""""""""""""""""
let g:any_jump_list_numbers=0
"""""""""""""""""""ANy-JUMP"""""""""""""""""""""""""""""
"""""""""""""""""""QuickScope"""""""""""""""""""""""""""
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
"""""""""""""""""""QuickScope"""""""""""""""""""""""""""

"""""""""""""""""""FIRENVIM"""""""""""""""""""""""""""
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
            \ '.*': {
                \ 'cmdline': 'firenvim',
                \ 'priority': 0,
                \ 'selector': 'textarea:not([readonly]):not([class="handsontableInput"]), div[role="textbox"]',
                \ 'takeover': 'always',
            \ },
            \ '.*notion\.so.*': { 'priority': 9, 'takeover': 'never', },
            \ '.*docs\.google\.com.*': { 'priority': 9, 'takeover': 'never', },
            \ '.*facebook\.com.*': { 'priority': 9, 'takeover': 'never', },
   \ }
\ }

if exists('g:started_by_firenvim')
  nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
else

endif

"""""""""""""""""""FIRENVIM"""""""""""""""""""""""""""

"""""""""""""""""""NerdCommenter"""""""""""""""""""""""""""
" Create default mappings
let g:NERDCreateDefaultMappings = 0

nmap <leader>cc <plug>NERDCommenterToggle
vmap <leader>cc <plug>NERDCommenterToggle

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters={
"   \ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
"   \ 'typescript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
" \}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"""""""""""""""""""NerdCommenter"""""""""""""""""""""""""""
"""""""""""""""""""VIMTEX"""""""""""""""""""""""""""
let g:vimtex_view_method = 'zathura'
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
" use SumatraPDF if you are on Windows
"""""""""""""""""""VIMTEX"""""""""""""""""""""""""""

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker'
let g:material_style='oceanic'
set background=dark
colorscheme vim-material
let g:airline_theme = 'material'

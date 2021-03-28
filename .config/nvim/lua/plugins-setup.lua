local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'dsznajder/vscode-es7-javascript-react-snippets'
  use 'nvim-lua/completion-nvim'
  use 'kabouzeid/nvim-lspinstall'
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'
  use 'alampros/vim-styled-jsx'
  use {
    'glacambre/firenvim',
     run = function()
       vim.fn['firenvim#install'](1)
     end
    }
  use 'SirVer/ultisnips'
  use 'gennaro-tedesco/nvim-peekup'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/vim-vsnip'
  use 'lervag/vimtex'
  use 'Konfekt/FastFold'
  use 'matze/vim-tex-fold'
  use 'mattn/emmet-vim'
  use 'w0rp/ale'
  use 'hail2u/vim-css3-syntax'
  use {'prettier/vim-prettier', run = 'yarn install' }
  use 'tpope/vim-sensible'
  use 'hzchirs/vim-material'
  use 'vim-airline/vim-airline'
  use 'justinmk/vim-sneak'
  use 'tpope/vim-surround'
  use 'christoomey/vim-tmux-navigator'
  use 'benmills/vimux'
  use {'jalvesaq/Nvim-R', branch = 'stable'}
  use 'preservim/nerdcommenter'
  use 'norcalli/nvim-colorizer.lua'
  use 'jiangmiao/auto-pairs'
  use 'lgeorget/maude.vim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'airblade/vim-rooter'
  use 'tpope/vim-fugitive'
  use 'unblevable/quick-scope'
  use 'kevinhwang91/rnvimr'
  use 'miyakogi/seiya.vim'
  use 'turbio/bracey.vim'
  use 'yuttie/comfortable-motion.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
end)

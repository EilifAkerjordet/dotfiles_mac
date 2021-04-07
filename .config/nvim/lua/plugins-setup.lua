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

  -- LSP --
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'

	-- Syntax and formatting --
  use 'alampros/vim-styled-jsx'
  use 'hail2u/vim-css3-syntax'
  use {'jalvesaq/Nvim-R', branch = 'stable'}
  use 'mattn/emmet-vim'
  use 'w0rp/ale'
  use 'lgeorget/maude.vim'
  use {'prettier/vim-prettier', run = 'yarn install' }

	-- Snippets --
  use 'dsznajder/vscode-es7-javascript-react-snippets'
  use 'nvim-lua/completion-nvim'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/vim-vsnip'

	-- Latex --
  use 'lervag/vimtex'
  use 'Konfekt/FastFold'
  use 'matze/vim-tex-fold'

	-- Color and FLAIR --
  use 'hzchirs/vim-material'
	use 'mhartington/oceanic-next'
	use 'hoob3rt/lualine.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'kyazdani42/nvim-web-devicons'
	use 'ryanoasis/vim-devicons'
  use 'mhinz/vim-startify'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	-- File navigation --
  use 'kevinhwang91/rnvimr'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/popup.nvim' -- Telescope dep
  use 'nvim-lua/plenary.nvim' -- Telescope dep
  use 'nvim-telescope/telescope-github.nvim' -- Telescope extension
  use 'nvim-telescope/telescope-fzy-native.nvim' -- Telescope extenstion

	-- Movement --
  use 'unblevable/quick-scope'
  use 'justinmk/vim-sneak'
  use 'christoomey/vim-tmux-navigator'
	use 'yuttie/comfortable-motion.vim'

	-- General config --
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-sensible'
  use 'airblade/vim-rooter'
  use 'tpope/vim-surround'

	-- Other --
  use {
    'glacambre/firenvim',
     run = function()
       vim.fn['firenvim#install'](1)
     end
    }
  use 'benmills/vimux'
  use 'preservim/nerdcommenter'
  use 'turbio/bracey.vim'
  use 'tpope/vim-fugitive'
end)

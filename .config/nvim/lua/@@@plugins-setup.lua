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
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  use 'AndrewRadev/splitjoin.vim'
  use {'jalvesaq/Nvim-R', branch = 'stable'}
  use {'prettier/vim-prettier', run = 'yarn install' }
  use 'w0rp/ale'
  use 'lgeorget/maude.vim'
  use 'windwp/nvim-ts-autotag'

  -- Commenting --
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'terrortylor/nvim-comment'

	-- Snippets --
  use 'dsznajder/vscode-es7-javascript-react-snippets'
	use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/vim-vsnip'
  use 'mattn/emmet-vim'

	-- Latex --
  use 'lervag/vimtex'
  use 'Konfekt/FastFold'
  use 'matze/vim-tex-fold'

	-- Color and FLAIR --
  use 'hzchirs/vim-material'
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

	-- Motion --
  use 'unblevable/quick-scope'
  use 'phaazon/hop.nvim'
  use 'christoomey/vim-tmux-navigator'
	use 'yuttie/comfortable-motion.vim'

	-- General config --
  use 'windwp/nvim-autopairs'
  use 'jiangmiao/auto-pairs' -- only for space completion
  use 'tpope/vim-surround'
  use 'tpope/vim-sensible'
  use 'airblade/vim-rooter'

	-- Other --
  use {
    'glacambre/firenvim',
     run = function()
       vim.fn['firenvim#install'](1)
     end
    }
  use 'benmills/vimux'
  use 'turbio/bracey.vim'
  use 'tpope/vim-fugitive'
end)

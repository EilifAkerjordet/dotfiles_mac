return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- A lot of plugins depend on these
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-lua/popup.nvim' -- Telescope dep
  use 'nvim-lua/plenary.nvim' -- Telescope dep

  -- LSP --
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}
	use 'ray-x/lsp_signature.nvim'

  -- Syntax and formatting --
  use { 'lukas-reineke/indent-blankline.nvim' }
  use 'AndrewRadev/splitjoin.vim'
  use 'windwp/nvim-ts-autotag'
  use 'editorconfig/editorconfig-vim'

  -- Commenting --
  use 'JoosepAlviste/nvim-ts-context-commentstring'
	use 'numToStr/Comment.nvim'

  -- Snippets --
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'onsails/lspkind-nvim'

	use 'hrsh7th/vim-vsnip-integ'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

  use 'mattn/emmet-vim'
	use {'dsznajder/vscode-es7-javascript-react-snippets', run = 'yarn install --frozen-lockfile && yarn compile' }

	-- Term --
	use {"akinsho/toggleterm.nvim"}

  -- Latex --
  use 'lervag/vimtex'
  use 'Konfekt/FastFold'
  use 'matze/vim-tex-fold'

  -- Color and FLAIR --
  use 'folke/tokyonight.nvim'
  use 'marko-cerovac/material.nvim'
  use 'hoob3rt/lualine.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'mhinz/vim-startify'

  -- File navigation --
  use 'ThePrimeagen/harpoon'
  use 'kevinhwang91/rnvimr'

	use { "nvim-telescope/telescope-frecency.nvim", requires = {"tami5/sqlite.lua"} }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-github.nvim' -- Telescope extension
  use 'nvim-telescope/telescope-fzy-native.nvim' -- Telescope extenstion
  use 'windwp/nvim-spectre'

  -- Motion --
  use 'unblevable/quick-scope'
  use 'phaazon/hop.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'yuttie/comfortable-motion.vim'

  -- General config --
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'tpope/vim-sensible'
  -- use 'airblade/vim-rooter'
  use "Pocco81/AutoSave.nvim"

  -- Git --
  use 'tpope/vim-fugitive'
  use 'ThePrimeagen/git-worktree.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'TimUntersberger/neogit'

  -- Markdown --
  use 'junegunn/goyo.vim'

  -- Other --
  use 'benmills/vimux'
  use 'turbio/bracey.vim'
  use 'ThePrimeagen/vim-be-good'
end)

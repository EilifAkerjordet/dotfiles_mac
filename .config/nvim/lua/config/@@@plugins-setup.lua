return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- A lot of plugins depend on these
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-lua/popup.nvim' -- Telescope dep
  use 'nvim-lua/plenary.nvim' -- Telescope dep

  -- LSP --
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'onsails/lspkind-nvim'
  use { 'ray-x/navigator.lua', requires = { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' } }

  -- Syntax and formatting --
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
  use 'AndrewRadev/splitjoin.vim'
  use 'windwp/nvim-ts-autotag'

  -- Commenting --
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'terrortylor/nvim-comment'

  -- Snippets --
  use 'onecentlin/laravel5-snippets-vscode'
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

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-github.nvim' -- Telescope extension
  use 'nvim-telescope/telescope-fzy-native.nvim' -- Telescope extenstion

  -- Motion --
  use 'unblevable/quick-scope'
  use 'phaazon/hop.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'yuttie/comfortable-motion.vim'

  -- General config --
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'tpope/vim-sensible'
  use 'airblade/vim-rooter'

  -- Git --
  use 'tpope/vim-fugitive'
  use 'ThePrimeagen/git-worktree.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'TimUntersberger/neogit'

  -- Markdown --
  use 'junegunn/goyo.vim'
  use 'preservim/vim-pencil'
  use 'preservim/vim-colors-pencil'

  -- Other --
  use 'benmills/vimux'
  use 'turbio/bracey.vim'
  use 'ThePrimeagen/vim-be-good'
end)

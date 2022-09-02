-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  -- themes
  use 'doums/darcula'
  use "EdenEast/nightfox.nvim"
  use "lunarvim/darkplus.nvim"
  use 'ryanoasis/vim-devicons'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'

  use 'kyazdani42/nvim-tree.lua'

  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'fatih/vim-go'
  use 'vim-test/vim-test'

  use 'nvim-telescope/telescope.nvim'
  use "ahmedkhalf/project.nvim"
  use 'nvim-lua/plenary.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use { 'L3MON4D3/LuaSnip', requires = "kyazdani42/nvim-web-devicons" }

  -- code completion & autocpmpletion
  use { "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" } -- The completion plugin
  use { "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" } -- buffer completions
  use { "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" } -- path completions
  use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
  use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

  use { "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" } -- enable LSP
  use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
  use { "jose-elias-alvarez/null-ls.nvim", commit = "53622ed39ffe9cf59fad89d1cbfb6edfb94a5d20" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }
  use 'rafamadriz/friendly-snippets'

  use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function() require("toggleterm").setup() end }

  use { "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" } -- Autopairs, integrates with both cmp and treesitter
  use 'windwp/nvim-ts-autotag'
  use 'lukas-reineke/lsp-format.nvim'
  use { "iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end }
  use 'numToStr/Comment.nvim'
  use 'goolord/alpha-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'akinsho/bufferline.nvim'
  use { 'glepnir/lspsaga.nvim', commit = "2c90dc88e479e785859e9cc1347e976e1cf8645b" }
  use 'ray-x/lsp_signature.nvim'

  use { "mfussenegger/nvim-dap", version = "0.2.0" }
  use 'leoluz/nvim-dap-go'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

end)

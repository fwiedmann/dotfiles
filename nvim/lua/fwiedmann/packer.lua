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
  use 'klen/nvim-test'

  use 'nvim-telescope/telescope.nvim'
  use "ahmedkhalf/project.nvim"
  use 'nvim-lua/plenary.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'kyazdani42/nvim-web-devicons'

  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use { 'L3MON4D3/LuaSnip', requires = "kyazdani42/nvim-web-devicons" }

  -- code completion & autocpmpletion
  use { "hrsh7th/nvim-cmp", commit = "2427d06b6508489547cd30b6e86b1c75df363411" } -- The completion plugin
  use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" } -- buffer completions
  use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" } -- path completions
  use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
  use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

  use { "neovim/nvim-lspconfig", commit = "e5ba5d2b96843903108b00f07fea782268cdd6af" } -- enable LSP
  -- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
  use { "williamboman/mason.nvim", commit = '45606b0e9b01a1565bfc8b57a52ec04f58f5f295' }

  use { "williamboman/mason-lspconfig.nvim" }

  use { "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }
  use 'rafamadriz/friendly-snippets'

  use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function() require("toggleterm").setup() end }

  use { "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" } -- Autopairs, integrates with both cmp and treesitter
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

  use 'laytan/cloak.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'mfussenegger/nvim-jdtls', version = "0.1.0" }

  use { "folke/which-key.nvim", commit = "6885b669523ff4238de99a7c653d47b081b5506d" }
  use { 'ThePrimeagen/harpoon', commit = "4dfe94e633945c14ad0f03044f601b8e6a99c708" }
  use { 'krivahtoo/silicon.nvim', run = './install.sh' }
end)

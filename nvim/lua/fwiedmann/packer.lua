-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  -- themes
  use 'doums/darcula'
  use 'folke/tokyonight.nvim'
  use "EdenEast/nightfox.nvim"
  use "lunarvim/darkplus.nvim"
  use 'ryanoasis/vim-devicons'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'

  use { 'nvim-tree/nvim-tree.lua', commit = 'd1410cb0896a3aad5d84ddc54284774a627c6d63' }

  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'fatih/vim-go'
  use 'vim-test/vim-test'

  use 'nvim-telescope/telescope.nvim'
  use "ahmedkhalf/project.nvim"
  use 'nvim-lua/plenary.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'kyazdani42/nvim-web-devicons'

  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use { 'L3MON4D3/LuaSnip', requires = "kyazdani42/nvim-web-devicons" }

  -- code completion & autocpmpletion
  use { "hrsh7th/nvim-cmp", commit = "777450fd0ae289463a14481673e26246b5e38bf2" }         -- The completion plugin
  use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }       -- buffer completions
  use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }         -- path completions
  use { "saadparwaiz1/cmp_luasnip", commit = "18095520391186d634a0045dacaa346291096566" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp-signature-help" }
  use 'rafamadriz/friendly-snippets'
  use { 'f3fora/cmp-spell' }
  use { "hrsh7th/cmp-nvim-lsp", commit = "0e6b2ed705ddcff9738ec4ea838141654f12eeef" }
  use { "hrsh7th/cmp-nvim-lua", commit = "f3491638d123cfd2c8048aefaf66d246ff250ca6" }

  use { "neovim/nvim-lspconfig", commit = "7d5af779acbc8a6ff9dfd7f2d39ae898fb67480f" } -- enable LSP
  -- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
  use { "williamboman/mason.nvim", commit = '0b66d6c5fa3fb8a36c76e8d2621e282e978dd5f8' }

  use { "williamboman/mason-lspconfig.nvim" }

  use { "jose-elias-alvarez/null-ls.nvim", commit = "5855128178fa78293acdfb5b4e41ef046779240b" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }

  use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function() require("toggleterm").setup() end }

  use { "windwp/nvim-autopairs", commit = "0fd6519d44eac3a6736aafdb3fe9da916c3701d4" } -- Autopairs, integrates with both cmp and treesitter
  use 'windwp/nvim-ts-autotag'
  use 'lukas-reineke/lsp-format.nvim'
  use { "iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end }
  use 'numToStr/Comment.nvim'
  use 'goolord/alpha-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'akinsho/bufferline.nvim'
  use { 'glepnir/lspsaga.nvim', commit = "2c90dc88e479e785859e9cc1347e976e1cf8645b" }
  use 'ray-x/lsp_signature.nvim'


  use 'laytan/cloak.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'mfussenegger/nvim-jdtls', commit = "ffb8f63689197b845c2388f0df5f0d1bd21c968f" }

  use { "folke/which-key.nvim", commit = "6885b669523ff4238de99a7c653d47b081b5506d" }
  use { 'ThePrimeagen/harpoon', commit = "4dfe94e633945c14ad0f03044f601b8e6a99c708" }
  use { 'krivahtoo/silicon.nvim', run = './install.sh' }
  use {
    "NTBBloodbath/rest.nvim",
    commit = "6b5487f68e55bd626f2f2bab6c92e2c19febe814",
    requires = { "nvim-lua/plenary.nvim" }
  }

  use "folke/todo-comments.nvim"
  use "xiyaowong/nvim-transparent"
  --dap
  use { "mfussenegger/nvim-dap", version = "0.5.0" }
  use 'leoluz/nvim-dap-go'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } }
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile"
  }
  use 'David-Kunz/jester'
  use "fwiedmann/nx-dap.nvim"

  use 'ChristianChiarulli/nvim-ts-rainbow'
end)

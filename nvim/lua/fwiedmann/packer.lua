-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'doums/darcula'
  use "EdenEast/nightfox.nvim"
  use {
    'lewis6991/gitsigns.nvim',
  }
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'nvim-treesitter/nvim-treesitter'
  use 'fatih/vim-go'
  use 'ryanoasis/vim-devicons'
  use 'f-person/git-blame.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'tpope/vim-fugitive'
  use 'prettier/vim-prettier'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'dense-analysis/ale'
  use 'vim-test/vim-test'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

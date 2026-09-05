local github = function(repository)
  return "https://github.com/" .. repository
end

vim.pack.add({
  github("dracula/vim"),
  github("f-person/auto-dark-mode.nvim"),
  github("nvim-lua/plenary.nvim"),
  github("nvim-telescope/telescope.nvim"),
  github("kdheepak/lazygit.nvim"),
  github("nvim-tree/nvim-web-devicons"),
  github("akinsho/bufferline.nvim"),
  github("nvim-tree/nvim-tree.lua"),
  github("mason-org/mason.nvim"),
  github("mason-org/mason-lspconfig.nvim"),
  github("neovim/nvim-lspconfig"),
  github("nvim-treesitter/nvim-treesitter"),
}, { confirm = false })

require("bufferline").setup({})

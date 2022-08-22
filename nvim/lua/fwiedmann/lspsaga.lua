local status_ok, lspsaga = pcall(require, "lspsaga")
if not status_ok then
  return
end

lspsaga.init_lsp_saga({
})

local keymap = vim.keymap.set
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("n", "<leader>cr", "<cmd>Lspsaga rename<CR>", { silent = true })
keymap("n", "<leader>ch", "<Cmd>Lspsaga signature_help<CR>", { silent = true })

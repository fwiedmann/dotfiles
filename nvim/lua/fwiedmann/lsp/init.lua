local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "fwiedmann.lsp.lsp-installer"
require("fwiedmann.lsp.handlers").setup()
require "fwiedmann.lsp.null-ls"

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

local servers = {
  "angularls",
  "sumneko_lua",
  "cssls",
  "html",
  "tsserver",
  "jsonls",
  "terraformls",
  "tflint",
  "gopls",
  "jdtls",
  "yamlls",
  "kotlin_language_server",
  "marksman"
}

mason.setup()
mason_lspconfig.setup(
  {
    ensure_installed = servers
  }
)

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("fwiedmann.lsp.handlers").on_attach,
    capabilities = require("fwiedmann.lsp.handlers").capabilities,
  }

  if server == "sumneko_lua" then
    local sumneko_opts = require "fwiedmann.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "fwiedmann.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "html" then
    local html_opts = require "fwiedmann.lsp.settings.html"
    opts = vim.tbl_deep_extend("force", html_opts, opts)
  end

  if server == "yamlls" then
    local yaml_opts = require "fwiedmann.lsp.settings.yaml"
    opts = vim.tbl_deep_extend("force", yaml_opts, opts)
  end

  if server == "terraformls" then
    local terraformls_opts = require "fwiedmann.lsp.settings.terraformls"
    opts = vim.tbl_deep_extend("force", terraformls_opts, opts)

  end

  if server == "jdtls" then
    local java_opts = require "fwiedmann.lsp.settings.jdtls"
    opts = vim.tbl_deep_extend("force", java_opts, opts)
  end

  if server == "jdtls" then
    goto continue
  end

  lspconfig[server].setup(opts)
  ::continue::
end

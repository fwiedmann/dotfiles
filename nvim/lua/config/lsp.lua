require("mason").setup()

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "eslint",
    "gopls",
    "jdtls",
    "lua_ls",
    "terraformls",
    "tflint",
    "ts_ls",
  },
  automatic_enable = true,
})

local preferred_formatter = {
  go = "gopls",
  java = "jdtls",
  javascript = "ts_ls",
  javascriptreact = "ts_ls",
  lua = "lua_ls",
  terraform = "terraformls",
  typescript = "ts_ls",
  typescriptreact = "ts_ls",
}

local function format(buffer)
  local name = preferred_formatter[vim.bo[buffer].filetype]
  if not name then
    return
  end

  local clients = vim.lsp.get_clients({ bufnr = buffer, name = name })
  local client = clients[1]
  if client and client:supports_method("textDocument/formatting") then
    vim.lsp.buf.format({ bufnr = buffer, id = client.id, timeout_ms = 2000 })
  end
end

local attach_group = vim.api.nvim_create_augroup("config.lsp.attach", { clear = true })
local format_group = vim.api.nvim_create_augroup("config.lsp.format", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
  group = attach_group,
  callback = function(event)
    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))
    local buffer = event.buf

    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, buffer, { autotrigger = true })
    end

    local map = function(keys, action, description)
      vim.keymap.set("n", keys, action, { buffer = buffer, desc = description })
    end

    map("gd", vim.lsp.buf.definition, "Go to definition")
    map("gr", vim.lsp.buf.references, "Find references")
    map("<leader>la", vim.lsp.buf.code_action, "Code action")
    map("<leader>ld", vim.diagnostic.open_float, "Line diagnostics")
    map("<leader>lf", function()
      format(buffer)
    end, "Format buffer")
    map("<leader>lr", vim.lsp.buf.rename, "Rename symbol")

    vim.api.nvim_clear_autocmds({ group = format_group, buffer = buffer })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = format_group,
      buffer = buffer,
      callback = function()
        format(buffer)
      end,
    })
  end,
})

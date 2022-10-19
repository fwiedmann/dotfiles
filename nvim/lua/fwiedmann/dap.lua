local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

local dap_vscode_status_ok, dap_vscode = pcall(require, "dap-vscode-js")
if not dap_vscode_status_ok then
  return
end


local status_ok, dap_go = pcall(require, "dap-go")
if not status_ok then
  return
end


local ui_status_ok, dap_ui = pcall(require, "dapui")
if not ui_status_ok then
  return
end

-- go lang debugger
dap_go.setup()

-- js/ts debugger
dap_vscode.setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
  -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
})

for _, language in ipairs({ "typescript", "javascript" }) do
  dap.configurations[language] = {
    {
      type = "pwa-chrome",
      request = "launch",
      name = "Lauch Chrome",
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}"
    },
    {
      type = "pwa-chrome",
      request = "attach",
      name = "Attach Chrome",
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}"
    }
  }
end

-- require("jester").setup({
--   path_to_jest_run = './node_modules/jest/bin/jest.js',
--   path_to_jest_debug = './node_modules/jest/bin/jest.js',
--   dap = {
--     type = "pwa-node",
--     request = "launch",
--     name = "Debug Jest Tests",
--     -- trace = true, -- include debugger info
--     runtimeExecutable = "node",
--     runtimeArgs = {
--       "./node_modules/jest/bin/jest.js",
--       "--runInBand",
--     },
--     rootPath = "${workspaceFolder}",
--     cwd = "${workspaceFolder}",
--     console = "integratedTerminal",
--     internalConsoleOptions = "neverOpen",
--   }
-- })
--
-- -- java debugger
dap.configurations.java = {
  {
    type = 'java';
    request = 'attach';
    name = "Debug (Attach) - Remote";
    hostName = "127.0.0.1";
    port = 5005;
  },
}

dap_ui.setup()

vim.keymap.set('n', '<Leader>dt', ":lua require'dapui'.toggle()<cr>", { silent = true })

dap.listeners.after.event_initialized["dapui_config"] = function()
  dap_ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dap_ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dap_ui.close()
end

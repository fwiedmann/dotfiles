local status_ok, dap_go = pcall(require, "dap-go")
if not status_ok then
  return
end

dap_go.setup()

local ui_status_ok, dap_ui = pcall(require, "dapui")
if not ui_status_ok then
  return
end

dap_ui.setup()

local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

dap.listeners.after.event_initialized["dapui_config"] = function()
  dap_ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dap_ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dap_ui.close()
end


local dap = require('dap')
dap.adapters.delve = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = {'dap', '-l', '127.0.0.1:${port}'},
  }
}

dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}"
  },
  {
    type = "delve",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}"
  },
  -- works with go.mod packages and sub packages 
  {
    type = "delve",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}"
  } 
}

local dap = require "dap"
local dapui = require "dapui"
dap.listeners.after["event_initialized"]["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before["event_terminated"]["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before["event_exited"]["dapui_config"] = function()
    dapui.close()
end
dapui.setup()








local dap = require('dap')
local mason_registry = require("mason-registry")
local dapui = require('dapui')

local codelldb_root = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
local codelldb_path = codelldb_root .. "adapter/codelldb"
local liblldb_path = codelldb_root .. "lldb/lib/liblldb.so"

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

-- Rust -----------------------------------------------------------------------

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
      command =  codelldb_path,
      args = { "--port", "${port}"},
  }
}

dap.configurations.cpp = {
  {
    name = "rust_codelldb",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.rust = dap.configurations.cpp

local opts = {
    -- ... other configs
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(
            codelldb_path, liblldb_path)
    }
}

-- Normal setup
require('rust-tools').setup(opts)

-- Python ---------------------------------------------------------------------
dap.adapters.python = {
    type = 'executable';
    command = os.getenv('HOME') .. '/.virtualenvs/debugpy/bin/python';
    args = { '-m', 'debugpy.adapter' };
 }

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return '/usr/bin/python'
    end;
  },
}


-- Godot ----------------------------------------------------------------------

dap.adapters.godot = {
  type = "server",
  host = '127.0.0.1',
  port = 6006,
}

dap.configurations.gdscript = {
  {
    type = "godot",
    request = "launch",
    name = "Launch scene",
    project = "${workspaceFolder}",
    launch_scene = true,
  }
}


-- TypeScript -------


dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "ts-node",
    -- 💀 Make sure to update this path to point to your installation
    args = {"/home/tream/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}"},
  }
}

dap.configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}

dap.configurations.typescript = dap.configurations.javascript

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

vim.lsp.start({
  name = 'gdscript',
  cmd = vim.lsp.rpc.connect('127.0.0.1', 6008), -- Port must match your Language server settings within Godot
  --root_dir = vim.fs.dirname(vim.fs.find({'project.godot'}, { upward = true })[1]),
})

lspconfig.gdscript.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = require("user.lsp.handlers").on_attach,
  flags = lsp_flags,

}


require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

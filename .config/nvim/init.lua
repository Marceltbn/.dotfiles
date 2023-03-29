vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
require('user.settings')
require("user.plugins")
require("user.color")
require("user.dashboard")
require("user.treesitter")
require('user.nvim-tree')
require('user.keymap')
require('user.remaps')
require('user.telescope')
require('user.transparent')
require('user.lualine')
require('user.lsp')
require('user.cmp')
require('user.toggleterm')
require('user.comment')
require('user.autopairs')
require('user.gitsigns')
require('user.copilot')
require('user.fn')
require('user.obsidian')
require("user.quarto")
require("user.dap")
require("user.rust_tools")
-- vim.g.magma_automatically_open_output = true
-- vim.g.magma_image_provider = "kitty"
-- require("user.bufferline")
require("user.sniprun")
require("user.vim-illuminate")
require("user.neoscroll")
require("user.dapui")
require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})
require("user.harpoon")

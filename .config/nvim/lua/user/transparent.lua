require("transparent").setup({
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "lualine_c_normal",
    "lualine_c_inactive",
    "NvimTreeStatusLine",
    "NvimTreeNormal",
    "NvimTree",
    "NvimTreeWinSeparator",
    "NvimTreeNormalNC",
    "TelescopeNormal",
    "TelescopeBorder",
    "ToggleTerm1Normal",
    "DapUINormal"
  },
  exclude_groups = {}, -- table: groups you don't want to clear
})

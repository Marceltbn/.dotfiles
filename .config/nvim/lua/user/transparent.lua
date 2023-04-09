--
--
--
--
--
--
--
-- BufferTabpages

require("transparent").setup({
    groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer'
    },

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
    "DapUINormal",
    "FloatBorder",
    "ToggleTerm1SignColumn",
    "WhichKeyFloat",
  },
  exclude_groups = {}, -- table: groups you don't want to clear

})

require("transparent").setup({
	groups = {
		"Normal",
		"NormalNC",
		"Comment",
		"Constant",
		"Special",
		"Identifier",
		"Statement",
		"PreProc",
		"Type",
		"Underlined",
		"Todo",
		"String",
		"Function",
		"Conditional",
		"Repeat",
		"Operator",
		"Structure",
		"LineNr",
		"NonText",
		"SignColumn",
		"CursorLineNr",
		"EndOfBuffer",
	},
	extra_groups = {
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
		"TroubleNormal",
	},
	exclude_groups = {},
})

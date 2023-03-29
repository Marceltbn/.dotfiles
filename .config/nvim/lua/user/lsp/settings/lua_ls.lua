return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim", "quarto", "pandoc" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}

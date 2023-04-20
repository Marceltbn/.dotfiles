-- METONVIM --

------------------
-- dependencies --
------------------
-- $ sudo pacman -S neovim
------------------

-------------
-- Plugins --
-------------
-- lazy -- "https://github.com/folke/lazy.nvim.git",
-- comment -- "numToStr/Comment.nvim",
-- "JoosepAlviste/nvim-ts-context-commentstring"
-------------
local obsidian_enabled = false
-------------

-----------
-- Files --
-----------
-- keymap.lua
-- color.lua
-----------

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Automatically installs packer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Install your plugins here
require("lazy").setup({
    "numToStr/Comment.nvim",                    -- Auto comments
    "JoosepAlviste/nvim-ts-context-commentstring", -- Comments for TSX and JSX

    -- Colorschemes
    "folke/tokyonight.nvim",
    "catppuccin/nvim",

    "glepnir/dashboard-nvim", -- Dashboard

    -- Multi cursors
    "terryma/vim-multiple-cursors",

    -- Telecope
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.0",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    "xiyaowong/nvim-transparent", -- Transparent

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
    },

    -- Lsp
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    -- nvim-dap debug
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
    "simrat39/rust-tools.nvim",
    { "mxsdev/nvim-dap-vscode-js", dependencies = { "mfussenegger/nvim-dap" } },

    --[[ use {
        "microsoft/vscode-js-debug",
        opt = true,
        run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    } ]]
    -- nvim-dap-ui
    { "rcarriga/nvim-dap-ui",      dependencies = { "mfussenegger/nvim-dap" } },

    -- Fine Cmd Line
    {
        "VonHeikemen/fine-cmdline.nvim",
        dependencies = {
            { "MunifTanjim/nui.nvim" },
        },
    },

    -- Null-ls
    "jose-elias-alvarez/null-ls.nvim",

    -- cmp
    "hrsh7th/nvim-cmp",  -- Autocompletion plugin
    "hrsh7th/cmp-nvim-lsp", -- for nvim lsp
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp

    -- snippets
    "L3MON4D3/LuaSnip", -- Snippets plugin/engine
    "rafamadriz/friendly-snippets",

    -- GitSigns
    "lewis6991/gitsigns.nvim",

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    -- CoPilot
    "github/copilot.vim",

    -- autopairs
    "windwp/nvim-autopairs",

    -- toggleterm
    {
        "akinsho/toggleterm.nvim",
        version = "*",
    },

    --
    { "akinsho/bufferline.nvim", version = "v3.*" },
    -- Vim game
    "ThePrimeagen/vim-be-good",

    -- Godot
    "habamax/vim-godot",
    {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },

    -- Which-key
    { "folke/which-key.nvim" },

    -- Magma nvim Jupyter
    --use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

    --
    -- quarto
    {
        "quarto-dev/quarto-nvim",
        dependencies = {
            "jmbuhr/otter.nvim",
        },
        config = function()
            require("quarto").setup({
                lspFeatures = {
                    enabled = true,
                    languages = { "r", "python", "julia" },
                    diagnostics = {
                        enabled = true,
                        triggers = { "BufWrite" },
                    },
                    completion = {
                        enabled = true,
                    },
                },
            })
        end,
    },

    -- vim-illuminate
    "RRethy/vim-illuminate",
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },

    -- sniprun
    { "michaelb/sniprun", build = "bash ./install.sh" },

    -- Obisidan
    {
        "epwalsh/obsidian.nvim",
        config = function()
            require("obsidian").setup({
                dir = "~/root/Synced/",
                completion = {
                    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
                },
            })
        end,
    },

    -- neoscroll
    "karb94/neoscroll.nvim",

    -- Neodev
    "folke/neodev.nvim",

    -- Harpoon
    "ThePrimeagen/harpoon",

    -- Colors
    "NvChad/nvim-colorizer.lua",
    {
        "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    },
    "rktjmp/lush.nvim",

    -- autotag
    "windwp/nvim-ts-autotag",

    -- ZenMode
    {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    },

    -- File Exlorer
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        version = "nightly",
        config = function()
            require("nvim-tree").setup({
                git = {
                    enable = true,
                },
                sync_root_with_cwd = true,
                respect_buf_cwd = true,
                update_focused_file = {
                    enable = true,
                    update_root = true,
                },
                sort_by = "case_sensitive",
                view = {
                    side = "right",
                    adaptive_size = true,
                    mappings = {
                        list = {
                            { key = "e", action = "" },
                        },
                    },
                },
                renderer = {
                    group_empty = true,
                    highlight_git = true,
                    icons = {
                        show = {
                            git = true,
                        },
                    },
                },
                filters = {
                    dotfiles = false,
                },
            })
        end,
    },
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup({})
        end,
    },

    --[[ {
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({})
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			--Please make sure you install markdown and markdown_inline parser
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}, ]]
})

-- require("user.nvim-tree")
require("user.keymap")
require("user.settings")
require("user.remaps")
require("user.colorscheme")
require("user.dashboard")
require("user.treesitter")
require("user.telescope")
require("user.transparent")
require("user.lualine")
require("user.lsp")
require("user.cmp")
require("user.toggleterm")
require("user.comment")
require("user.autopairs")
require("user.gitsigns")
require("user.copilot")

require("user.dap")

require("user.fn")
require("user.quarto")
require("user.rust_tools")
-- vim.g.magma_automatically_open_output = true
-- vim.g.magma_image_provider = "kitty"
-- require("user.bufferline")
require("user.sniprun")
require("user.vim-illuminate")
require("user.neoscroll")
require("user.harpoon")
require("user.color-picker")
require("user.neodev")
require("user.colorizer")
require("user.whichkey")
require("nvim-ts-autotag").setup()
require("user.colors")
require("user.fine-cmdline")

vim.cmd("autocmd BufWritePost colors.lua luafile %") -- updates colors on save

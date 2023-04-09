
local fn = vim.fn

-- Automatically installs packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})


-- Install your plugins here
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'numToStr/Comment.nvim' -- Auto comments
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Comments for TSX and JSX

  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- File Exlorer
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'glepnir/dashboard-nvim' -- Dashboard

  -- Multi cursors
  use 'terryma/vim-multiple-cursors'

  -- Telecope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'xiyaowong/nvim-transparent' -- Transparent  

  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Lsp
  use "williamboman/mason.nvim" --
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig" -- enable lsp

  -- Null-ls
  use 'jose-elias-alvarez/null-ls.nvim'

  -- cmp
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- for nvim lsp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

  -- snippets
  use 'L3MON4D3/LuaSnip' -- Snippets plugin/engine
  use "rafamadriz/friendly-snippets"

  -- GitSigns
  use 'lewis6991/gitsigns.nvim'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- CoPilot
  use 'github/copilot.vim'

  -- autopairs
  use 'windwp/nvim-autopairs'

  -- toggleterm
  use {
    "akinsho/toggleterm.nvim", tag = '*' }

  --
  use {'akinsho/bufferline.nvim', tag = "v3.*"}
  -- Vim game
  use 'ThePrimeagen/vim-be-good'

  -- Godot
  use 'habamax/vim-godot'

  -- Markdown Prewiew
 use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
 })

  -- Which-key
  use { "folke/which-key.nvim"}
  
  -- Magma nvim Jupyter
 --use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

  --
  -- quarto
  use { 'quarto-dev/quarto-nvim',
      requires = {
        'jmbuhr/otter.nvim',
      },
      config = function()
        require 'quarto'.setup {
          lspFeatures = {
            enabled = true,
            languages = { 'r', 'python', 'julia' },
            diagnostics = {
              enabled = true,
              triggers = { "BufWrite" }
            },
            completion = {
              enabled = true
            }
          }
        }
      end
    }

  -- vim-illuminate
  use 'RRethy/vim-illuminate'

  -- nvim-surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- sniprun
  use { 'michaelb/sniprun', run = 'bash ./install.sh'}

  -- Obisidan
  use 'epwalsh/obsidian.nvim'

  -- neoscroll
  use 'karb94/neoscroll.nvim'

  -- nvim-dap debug
  use 'mfussenegger/nvim-dap'
  use 'simrat39/rust-tools.nvim'

  -- nvim-dap-ui
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use "folke/neodev.nvim"

  use "ThePrimeagen/harpoon"

  use "norcalli/nvim-colorizer.lua"

  use ({"ziontee113/color-picker.nvim",
      config = function()
          require("color-picker")
      end,
  })
  use 'rktjmp/lush.nvim'

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

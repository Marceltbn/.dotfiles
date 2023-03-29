local _, db = pcall(require, "dashboard")
-- local home = os.getenv('HOME')

db.setup({
  theme = 'doom',
  config = {
    header = {
  	"",
  	"",
  	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  	"",
  	"",
    },
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = ' ',
        desc = 'Find Oldfiles',
        key = 'f',
        keymap = 'SPC f d',
        action = 'Telescope oldfile'
      },
    },
    footer = {}  --your footer
  }
})


--[[ db.setup({
  default_banner = {
  },
  --
  -- db.preview_commatrtnd = 'ueberzug'
  custom_center = {
       {
        icon = '  ',
        desc = 'Open Personal dotfiles                  ',
        action = '',
        -- shortcut = 'SPC f d',
        },
      },
}) ]]

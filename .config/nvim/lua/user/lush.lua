local lush = require('lush')
local hsl = lush.hsl

-- local sea_gull  = hsl("#c6c6c6")    -- Or use hex form, preceeded with a #. ]]



---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    WhichKeyDesc { fg = hsl(205, 100, 65) },
    EndOfBuffer { gui = "#000"},
    --   <HighlightGroupName> { bg = <hsl>|<string>,
    --                          fg = <hsl>|<string>,
    --                          sp = <hsl>|<string>,
    --                          gui = <string> },


    -- Lush is most useful when you use previously defined groups aid in
    -- picking colours for future groups.
    --
    -- For example, lets set our cursorline (if disabled: `setlocal cursorline`)
    -- to be slightly lighter than our normal background.

    -- Set a highlight group from another highlight group
    --CursorLine { bg = Normal.bg.lighten(5) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.

    -- Or maybe lets style our visual selection to match Cusorlines background,
    -- and render text in Normal's foreground complement.
    -- Visual { bg = CursorLine.bg, fg = Normal.fg.rotate(180) },

    -- We can also link a group to another group. These will inherit all of the
    -- linked group options (See h: hi-link). (`setlocal cursorcolumn`)
    -- CursorColumn { CursorLine },

    -- We can make white space characters slightly visible
    -- whitespace { fg = Normal.bg.desaturate(25).lighten(25) },

    -- We can inherit properties if we want to tweak a group slightly
    -- Note: This looks similar to a link, but the defined group will have its
    -- own properties, cloned from the parent.
    -- Lets make Comments look like Whitespace, but with italics
    -- Comment { Whitespace, gui="italic" },

    -- Here's how we might set our line numbers to be relational to Normal,
    -- note that we're also using some function aliases, see the readme for more
    -- information.
    -- (`setlocal number`)
    LineNr       { bg = hsl(200, 0, 50), fg = hsl(250, 0, 50) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { bg = CursorLine.bg, fg = Normal.fg.ro(180) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

    -- You can also use highlight groups to define "base" colors, if you dont
    -- want to use regular Lua variables. They will behave in the same way.
    -- Note that these groups *will* be defined as a vim-highlight-group, so
    -- try not to pick names that might end up being used by something else.
    --
    -- CamelCase is by tradition but you don't have to use it.
    -- search_base  { bg = hsl(52, 52, 52), fg = hsl(52, 10, 10) },
    -- Search       { search_base },
    -- IncSearch    { bg = search_base.bg.ro(-20), fg = search_base.fg.da(90) },

    -- We can also mix colours together
    -- Type         { fg = Normal.fg.mix(LineNr.fg, 30) }

    -- And that's the basics of using Lush!
    --
    -- For more information, see the README and :h lush or run :LushRunTutorial
  }
end)

return theme


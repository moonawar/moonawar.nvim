-- colorscheme
local dracula = require("dracula")
dracula.setup({
  show_end_of_buffer = true, -- default false
  transparent_bg = true, -- default false 
})

require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
})

vim.cmd.colorscheme('catppuccin')

-- statusbar
require("lualine").setup()

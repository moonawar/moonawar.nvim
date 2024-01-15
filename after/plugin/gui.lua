-- colorscheme
local dracula = require("dracula")
dracula.setup({
  show_end_of_buffer = true, -- default false
})

vim.cmd.colorscheme('dracula')

-- statusbar
require("lualine").setup()

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

function Harpoon_add_file()
    mark.add_file()
    print(vim.fn.expand('%:p') .. " added to the harpoon")
end

function Harpoon_next()
    ui.nav_next()
    print(vim.fn.expand('%:p'))
end

function Harpoon_prev()
    ui.nav_prev()
    print(vim.fn.expand('%:p'))
end

vim.keymap.set("n", "<leader>a", Harpoon_add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<c-n>", Harpoon_next)
vim.keymap.set("n", "<c-b>", Harpoon_prev)

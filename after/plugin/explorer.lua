local oil = require("oil")

oil.setup({
    columns = {
        "icon",
        "mtime",
    },
    lsp_rename_autosave = false,
    view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
        end,
    },
})

vim.keymap.set("n", "<leader>cd",oil.open)

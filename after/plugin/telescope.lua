local builtin = require('telescope.builtin')
local telescope = require('telescope')

-- Create a custom file picker with a file type filter
telescope.setup {
    defaults = {
        file_ignore_patterns = {'node_modules', '**.meta', '**.asset', '.git'},
    },
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local builtin = require('telescope.builtin')
local telescope = require('telescope')

-- Create a custom file picker with a file type filter
telescope.setup {
    defaults = {
        file_ignore_patterns = {'node_modules', '**.meta', '**.asset'},
    },
}

-- Define a custom picker for searching .cs files
function search_cs_files()
    builtin.find_files {
        prompt_title = 'Search .cs Files',
        cwd = vim.fn.getcwd(), -- Set the current working directory
        find_command = {'rg', '--files', '--type', 'cs'}, -- Use ripgrep with file type filter
    }
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.api.nvim_create_user_command('UnityMode', function ()
    vim.keymap.set('n', '<leader>ff', search_cs_files, {})
end, {})

vim.api.nvim_create_user_command('UnityStop', function ()
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
end, {})

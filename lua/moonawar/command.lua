local commands = {'w', 'q'}

for i=1, #commands do
    vim.api.nvim_create_user_command(string.upper(commands[i]),
    function ()
        vim.cmd(commands[i])
    end,
    {}
    )
end

-- Add custom command to copy and paste files with incremented filenames
function Cp()
    if vim.fn.isdirectory(vim.fn.expand('%')) == 1 then
        print("Open the file first to execute the Cp command")
        return
    end

    local current_dir = vim.fn.expand('%:p:h')
    local file_extension = vim.bo.filetype
    local file_name_without_extension = vim.fn.expand('%:t:r')
    local new_filename = file_name_without_extension .. '-' .. 1 .. '.' .. file_extension
    local counter = 1

    while vim.fn.filereadable(current_dir .. '/' .. new_filename) == 1 do
        counter = counter + 1
        new_filename = file_name_without_extension .. '-' .. counter .. '.' .. file_extension
    end

    local new_path = current_dir .. '/' .. new_filename
    local content = vim.fn.readfile(vim.fn.expand('%'))
    vim.fn.writefile(content, new_path)
    vim.cmd.Ex()
end

vim.api.nvim_create_user_command('Cp', Cp, {})

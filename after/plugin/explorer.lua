local oil = require("oil")

local unity_hidden = {
    '.csproj', '.unityproj', '.sln', '.suo',
    '.tmp', '.user', '.userprefs', '.pidb',
    '.booproj', '.svd', '.pdb', '.mdb',
    '.opendb', '.VC.db', '.meta', '.asset'
}

function GetExt(filename)
    return string.match(filename, "%.([^%.]+)$")
end

local function isUnityHidden(filename)
    local ext = GetExt(filename)

    if ext == nil then
        return false
    end

    ext = '.' .. ext
    for _, extHidden in ipairs(unity_hidden) do
        if extHidden == ext then
            return true
        end
    end
end

oil.setup({
    columns = {
        "icon",
    },
    lsp_rename_autosave = false,
    keymaps = {
        ["<C-p>"] = false,
    },
    view_options = {
        -- show files and directories that start with "."
        show_hidden = true,
        -- this function defines what is considered a "hidden" file
        is_hidden_file = function(name, _)
            if vim.startswith(name, "..") then
                return false
            end
            return vim.startswith(name, ".") or isUnityHidden(name)
        end,
    },
})

vim.keymap.set("n", "<leader>cd",oil.open)
vim.keymap.set("n", "<leader>cf",oil.open_float)

vim.keymap.set("n", "<leader>g", vim.cmd.Git)

-- Fugitive push
function Confirm_git_push()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD")
    branch = string.gsub(branch, "\n", "")
    local choice = vim.fn.input("Push to " .. branch .. "? (y/n): ")
    print("\n")
    if string.lower(choice) == "y" then
        vim.cmd(":Git push")
    else
        print("Push operation canceled.")
    end
end

vim.keymap.set("n", "<leader>gp", [[:lua Confirm_git_push()<CR>]])

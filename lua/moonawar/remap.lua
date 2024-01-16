vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Moving selected line vertically
vim.keymap.set("v", "J", ":m \">+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m \"<-2<CR>gv=gv")

-- Copy-paste with system buffer
vim.keymap.set("v", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

-- Navigating split windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

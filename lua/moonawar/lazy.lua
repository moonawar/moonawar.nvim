local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {'Mofiqul/dracula.nvim'},
    {'nvim-tree/nvim-web-devicons' },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = {'nvim-lua/plenary.nvim' }},
    {'ThePrimeagen/vim-be-good'}, 
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    {'tpope/vim-fugitive'},
    {'nvim-lualine/lualine.nvim'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'ThePrimeagen/harpoon'},
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'numToStr/Comment.nvim', lazy = false},
    {'JoosepAlviste/nvim-ts-context-commentstring'},
    {'stevearc/oil.nvim'},
    {'kylechui/nvim-surround'},
    {'folke/trouble.nvim'},
    {'untitled-ai/jupyter_ascending.vim'},
    {'github/copilot.vim'},
    {'cdelledonne/vim-cmake'},
}
require("lazy").setup(plugins)

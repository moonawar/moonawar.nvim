local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {'nvim-tree/nvim-web-devicons'},
    {'catppuccin/nvim', name = 'catppuccin', priority = 1000},
    {'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = {'nvim-lua/plenary.nvim'}},
    {'nvim-lualine/lualine.nvim'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'akinsho/toggleterm.nvim', version = '*', config = true},
    {'numToStr/Comment.nvim', lazy = false},
    {'JoosepAlviste/nvim-ts-context-commentstring'},
    {'stevearc/oil.nvim'},
    {'kylechui/nvim-surround'},
    {'github/copilot.vim'},
}
require('lazy').setup(plugins)

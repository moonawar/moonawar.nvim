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
    'Mofiqul/dracula.nvim',
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }	    
    },	
   'ThePrimeagen/vim-be-good', 
   { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, 
   'tpope/vim-fugitive',
}
require("lazy").setup(plugins)

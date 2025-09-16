-- init.lua for Neovim with LazyVim

-- Set up Lazy.nvim
vim.opt.runtimepath:prepend("C:/Users/jorda/AppData/Local/nvim/lazy/lazy.nvim")

require("config.keymaps")
require("config.options")
require("lazy").setup("plugins")

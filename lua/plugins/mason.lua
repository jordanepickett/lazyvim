return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- Mason setup
    require("mason").setup()

    -- Mason-LSPConfig setup
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",       -- Lua
        "clangd",
      },
      automatic_installation = true,
    })
  end,
}

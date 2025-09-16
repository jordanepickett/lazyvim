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

    -- LSP setup
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = { "lua_ls", "html", "cssls" }
    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        capabilities = capabilities,
      })
    end
  end,
}

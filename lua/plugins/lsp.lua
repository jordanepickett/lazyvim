return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local mason_lsp = require("mason-lspconfig")

    -- Setup Mason
    mason.setup()

    -- Completion capabilities
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Define on_attach with keymaps
    local on_attach = function(client, bufnr)
      local opts = { buffer = bufnr, silent = true }
    end

    mason_lsp.setup({
        ensure_installed = { "lua_ls", "clangd" },
        automatic_installation = true,
        handlers = {
            function(server)
                lspconfig[server].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end,
        },
    })
  end,
}

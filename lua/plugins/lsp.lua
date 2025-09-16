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
    mason_lsp.setup({
      ensure_installed = { "lua_ls", "ts_ls", "clangd" },
      automatic_installation = true,
    })

    -- Completion capabilities
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Define on_attach with keymaps
    local on_attach = function(client, bufnr)
      local opts = { buffer = bufnr, remap = false }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
      vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
      vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    end

    -- Setup servers
    local servers = { "lua_ls", "ts_ls", "pyright", "clangd" }
    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
  end,
}

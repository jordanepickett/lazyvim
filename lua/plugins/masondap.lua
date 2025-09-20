return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
  opts = {
    ensure_installed = { "js-debug-adapter", "cppdb" }, -- or use vscode-js-debug manually
  },
}

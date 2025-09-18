return {
  "mxsdev/nvim-dap-vscode-js",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    require("dap-vscode-js").setup({
      -- Path to vscode-js-debug
      node_path = "node",
      debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
      adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal" },
    })
  end,
}

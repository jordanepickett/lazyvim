return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- updates parsers
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "cpp",
        "c",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "html",
        "css",
        "json",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

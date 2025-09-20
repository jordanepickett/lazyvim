return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add          = { text = "│" },
      change       = { text = "│" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },
  },
  config = function(_, opts)
    require("gitsigns").setup(opts)

    -- Custom highlight colors
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00ff00" })     -- bright green
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffaa00" }) -- orange
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000" }) -- red
  end,
}

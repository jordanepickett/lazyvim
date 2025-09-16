return {
  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,  -- load immediately
    priority = 1000,
    --config = function()
      --vim.cmd([[colorscheme tokyonight]]) -- default theme
    --end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        -- options
        dark_variant = "main",       -- choose variant, e.g., main / moon / dawn
        disable_background = false,  -- keep bg customizable
        groups = {
          background = "000000",     -- set editor background to black
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  }
}


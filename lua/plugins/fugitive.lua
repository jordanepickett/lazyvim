return {
  "tpope/vim-fugitive",
  cmd = { "Git", "Gdiffsplit", "Gread", "Gwrite" }, -- lazy-load on these commands
  keys = {
    { "<leader>gs", ":Git<CR>", desc = "Git status" },
    { "<leader>ge", ":Ge:<CR>", desc = "Git changes" },
    { "<leader>gd", ":Gdiffsplit<CR>", desc = "Git diff" },
    { "<leader>gc", ":Git commit<CR>", desc = "Git commit" },
    { "<leader>gp", ":Git push<CR>", desc = "Git push" },
  },
}

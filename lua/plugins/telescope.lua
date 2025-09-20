return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
      },
    })

    -- Keymaps (scoped to Telescope)
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "gd", function()
        builtin.lsp_definitions()
    end, opts)
    vim.keymap.set("n", "<leader>vrr", function()
        builtin.lsp_references()
    end, opts)
    vim.keymap.set("n", "<leader>vrn", function()
        vim.lsp.buf.rename()
    end, opts)
    vim.keymap.set("i", "<C-h>", function()
        vim.lsp.buf.signature_help()
    end, opts)

    vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find Git files" })
    vim.keymap.set("n", "<leader>ps", function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end, { desc = "Search for string" })
  end,
}

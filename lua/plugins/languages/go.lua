return {
  "olexsmir/gopher.nvim",
  ft = "go",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local gopher = require "gopher"

    gopher.setup {}

    vim.keymap.set("n", "<leader>gsj", ":GoTagAdd json<CR>", { desc = "generate json tags in go structs" })
    vim.keymap.set("n", "<leader>gsy", ":GoTagAdd yaml<CR>", { desc = "generate yaml tags in go structs" })
  end,
  build = function()
    vim.cmd.GoInstallDeps()
  end,
}

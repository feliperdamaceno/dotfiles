return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local gitsigns = require "gitsigns"

      gitsigns.setup {
        signs = {
          delete = { text = "󰍵" },
          changedelete = { text = "󱕖" },
        },
        on_attach = function(bufnr)
          vim.keymap.set("n", "<leader>rh", gitsigns.reset_hunk, { buffer = bufnr, desc = "reset hunk" })
          vim.keymap.set("n", "<leader>ph", gitsigns.preview_hunk, { buffer = bufnr, desc = "preview hunk" })
          vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, { buffer = bufnr, desc = "blame line" })
        end,
      }
    end,
  },
}

return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local config = require("gitsigns")

      config.setup({
        signs = {
          delete = { text = "󰍵" },
          changedelete = { text = "󱕖" },
        },

        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')

          vim.keymap.set("n", "<leader>rh", gitsigns.reset_hunk, { buffer = bufnr })
          vim.keymap.set("n", "<leader>ph", gitsigns.preview_hunk, { buffer = bufnr })
          vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, { buffer = bufnr })
        end,
      })
    end,
  }
}

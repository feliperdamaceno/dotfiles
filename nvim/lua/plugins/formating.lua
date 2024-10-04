return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require "conform"

    local formatters = require("config.formatters").formatters

    conform.setup {
      formatters_by_ft = formatters,
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    }

    vim.keymap.set("n", "<leader>fm", function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    end, { desc = "perform file format" })
  end,
}

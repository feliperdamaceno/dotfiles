return {
  "stevearc/conform.nvim",
  event = {"BufReadPre", "BufNewFile"},
  config = function ()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = require("lua.config.formatters")
    })
  end,
}

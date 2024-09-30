return {
  "williamboman/mason.nvim",
  lazy = false,
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require "mason"
    local mason_tool_installer = require "mason-tool-installer"

    mason.setup {
      ui = {
        icons = {
          package_pending = " ",
          package_installed = " ",
          package_uninstalled = " ",
        },
      },
      max_concurrent_installers = 10,
    }

    local formatters_ensure_installed = require("config.formatters").ensure_installed
    local linters_ensure_installed = require("config.linters").ensure_installed

    local ensure_installed = vim.tbl_extend("force", formatters_ensure_installed, linters_ensure_installed)

    mason_tool_installer.setup {
      ensure_installed = ensure_installed,
    }
  end,
}

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      local mason = require("mason")

      mason.setup({
        ui = {
          icons = {
            package_pending = " ",
            package_installed = " ",
            package_uninstalled = " ",
          },
        },
        max_concurrent_installers = 10,
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      local lsp_defaults = lspconfig.util.default_config

      local custom_capabilities = vim.lsp.protocol.make_client_capabilities()

      custom_capabilities.textDocument.completion.completionItem = {
        documentationFormat = { "markdown", "plaintext" },
        snippetSupport = true,
        preselectSupport = true,
        insertReplaceSupport = true,
        labelDetailsSupport = true,
        deprecatedSupport = true,
        commitCharactersSupport = true,
        tagSupport = { valueSet = { 1 } },
        resolveSupport = {
          properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
          },
        },
      }

      lsp_defaults.capabilities = vim.tbl_deep_extend(
        'force',
        lsp_defaults.capabilities,
        require('cmp_nvim_lsp').default_capabilities(),
        custom_capabilities
      )

      local lspservers = require("config.lspservers")

      for server, config in pairs(lspservers.servers) do
        lspconfig[server].setup(config)
      end

      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        ensure_installed = vim.tbl_keys(lspservers.servers),
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "get hover information" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
      vim.keymap.set("n", "<leader>gtd", vim.lsp.buf.type_definition, { desc = "go to type definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "go to references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "open code actions" })
    end,
  },
}

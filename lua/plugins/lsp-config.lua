return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      local lsp_defaults = lspconfig.util.default_config

      lsp_defaults.capabilities = vim.tbl_deep_extend(
        'force',
        lsp_defaults.capabilities,
        require('cmp_nvim_lsp').default_capabilities()
      )

      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.gopls.setup({})

      local config = require("mason-lspconfig")
      config.setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "tailwindcss",
          "gopls"
        },
        automatic_installation = true
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

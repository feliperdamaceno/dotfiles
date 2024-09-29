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

      local lspservers = require("lua.config.lspservers")

      for _, server in ipairs(lspservers.servers) do
        local config = lspservers.custom_configs[server] or {}
        lspconfig[server].setup(config)
      end

      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        ensure_installed = lspservers.servers,
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

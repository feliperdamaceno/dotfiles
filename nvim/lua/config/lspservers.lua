local util = require "lspconfig/util"

local servers = {
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
  ts_ls = {},
  html = {},
  emmet_ls = {
    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
  },
  cssls = {},
  tailwindcss = {},
  gopls = {
    filetypes = { "go", "gomod", "gowork", "gotmlp" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        completeUnimported = true,
        analyses = {
          unusedparams = true,
        },
      },
    },
  },
}

return {
  servers = servers,
}

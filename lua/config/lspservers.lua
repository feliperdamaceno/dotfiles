local servers = {
  "lua_ls",
  "ts_ls",
  "html",
  "tailwindcss",
  "gopls"
}

local custom_configs = {
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
}

return {
  servers = servers,
  custom_configs = custom_configs,
}

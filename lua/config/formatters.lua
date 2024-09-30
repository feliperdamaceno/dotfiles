local formatters = {
  html = { "prettier" },
  css = { "prettier" },
  scss = { "prettier" },
  json = { "prettier" },
  javascript = { "prettier" },
  typescript = { "prettier" },
  javascriptreact = { "prettier" },
  typescriptreact = { "prettier" },
  go = { "goimports-reviser", "gofumpt", "golines" },
  lua = { "stylua" },
  yaml = { "prettier" },
}

local ensure_installed = {}
-- Iterate through each formatter in the formatters table
for _, tools in pairs(formatters) do
  for _, tool in ipairs(tools) do
    if not vim.tbl_contains(ensure_installed, tool) then
      table.insert(ensure_installed, tool)
    end
  end
end

return {
  formatters = formatters,
  ensure_installed = ensure_installed,
}

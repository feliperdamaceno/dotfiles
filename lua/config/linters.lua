local linters = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  typescriptreact = { "eslint_d" },
}

local ensure_installed = {}
-- Iterate through each linter in the linters table
for _, tools in pairs(linters) do
  for _, tool in ipairs(tools) do
    if not vim.tbl_contains(ensure_installed, tool) then
      table.insert(ensure_installed, tool)
    end
  end
end

return {
  linters = linters,
  ensure_installed = ensure_installed,
}

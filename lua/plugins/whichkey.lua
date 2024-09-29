return {
  "folke/which-key.nvim",
  config = function()
    vim.keymap.set("n", "<leader>wK", "<cmd>WhichKey<CR>", { desc = "whichkey all keymaps" })
  end,
}

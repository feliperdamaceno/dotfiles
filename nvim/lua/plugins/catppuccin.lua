return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catppuccin = require "catppuccin"

      catppuccin.setup {
        no_italic = true,
        no_bold = true,
        no_underline = true,
      }

      vim.cmd.colorscheme "catppuccin-frappe"
    end,
  },
}

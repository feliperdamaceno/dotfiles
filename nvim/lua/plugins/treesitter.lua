return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treesitter = require "nvim-treesitter.configs"

      treesitter.setup {
        auto_install = true,
        highlight = {
          enable = true,
          use_languagetree = true,
        },
        indent = { enable = true },
      }
    end,
  },
}

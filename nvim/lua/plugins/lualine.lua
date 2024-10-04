return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require "lualine"

    lualine.setup {
      options = {
        theme = "catppuccin",
        icons_enabled = true,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          {
            "filename",
            fmt = function(str)
              if vim.bo.filetype == "NvimTree" then
                return "Explorer"
              end
              return str
            end,
            separator = { right = "" },
            left_padding = 2,
          },
        },
      },
    }
  end,
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local config = require('lualine')

    config.setup({
      options = {
        icons_enabled = true,
        theme = "nightfly"
      },
      sections = {
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      }
    })
  end
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    config = require('lualine')

    config.setup({
      options = {
        theme = "dracula"
      },
      sections = {
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      }
    })
  end
}

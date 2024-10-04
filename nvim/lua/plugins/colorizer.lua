return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    local colorizer = require "colorizer"

    colorizer.setup({
      "*",
      "!lazy",
    }, {
      mode = "background",
      names = false,
      RGB = true,
      RRGGBB = true,
      RGGBBAA = true,
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
    })

    vim.defer_fn(function()
      colorizer.attach_to_buffer(0)
    end, 0)
  end,
}

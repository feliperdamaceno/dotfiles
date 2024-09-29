return {
  "norcalli/nvim-colorizer.lua",
  config = function ()
    local config = require("colorizer")

    config.setup({
      "*",
      "!lazy",
    }, {
        mode = "foreground",
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
      config.attach_to_buffer(0)
    end, 0)
  end,
}

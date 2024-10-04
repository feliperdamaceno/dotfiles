return {
  "windwp/nvim-autopairs",
  config = function()
    local nvim_autopairs = require "nvim-autopairs"

    nvim_autopairs.setup {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    }

    -- setup cmp for autopairs
    local cmp_autopairs = require "nvim-autopairs.completion.cmp"
    require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}

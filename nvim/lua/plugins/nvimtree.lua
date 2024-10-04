return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvim_tree = require "nvim-tree"

    nvim_tree.setup {
      filters = {
        dotfiles = false,
        custom = {
          "**/.DS_Store",
          ".git",
          "node_modules",
        },
      },
      disable_netrw = true,
      hijack_cursor = true,
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      view = {
        width = 35,
        preserve_window_proportions = true,
      },
      renderer = {
        root_folder_label = false,
        highlight_git = true,
        icons = {
          show = {
            git = false,
          },
          glyphs = {
            default = "󰈚",
            folder = {
              default = "",
              empty = "",
              empty_open = "",
              open = "",
              symlink = "",
            },
            git = { unmerged = "" },
          },
        },
      },
    }

    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "toggle sidebar" })
  end,
}

return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require "telescope"

      telescope.setup {
        defaults = {
          file_ignore_patterns = {
            "node_modules",
          },
          prompt_prefix = "   ",
          selection_caret = " ",
          entry_prefix = " ",
          sorting_strategy = "ascending",
          horizontal = {
            prompt_position = "top",
            preview_width = 0.60,
          },
          layout_config = {
            width = 0.70,
            height = 0.70,
          },
          mappings = {
            n = { ["q"] = require("telescope.actions").close },
          },
        },
        file_ignore_patterns = { "node_modules/.*" },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {},
          },
        },
      }

      local builtin = require "telescope.builtin"

      -- telescope
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "telescope find buffers" })
      vim.keymap.set(
        "n",
        "<leader>fz",
        builtin.current_buffer_fuzzy_find,
        { desc = "telescope find in current buffer" }
      )
      vim.keymap.set("n", "<leader>ma", builtin.marks, { desc = "telescope find marks" })
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "telescope find old" })

      -- git
      vim.keymap.set("n", "<leader>cm", builtin.git_commits, { desc = "telescope git commits" })
      vim.keymap.set("n", "<leader>gt", builtin.git_status, { desc = "telescope git status" })

      require("telescope").load_extension "ui-select"
    end,
  },
}

-- general
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
vim.keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })
vim.keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
vim.keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- insert mode navigation
vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "move end of line" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })

-- panel navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { desc = "switch panel up" })
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { desc = "switch panel down" })
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { desc = "switch panel left" })
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { desc = "switch panel right" })

-- comments
vim.keymap.set("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

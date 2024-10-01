-- globals
vim.g.mapleader = " " -- leader key
vim.g.maplocalleader = "\\" -- local leader key
vim.g.toggle_theme_icon = "   " -- theme toggle icon

-- general options
vim.o.laststatus = 3 -- single global status line
vim.o.showmode = false -- don't show mode (e.g. -- insert --)
vim.o.clipboard = "unnamedplus" -- use system clipboard
vim.o.cursorline = true -- highlight the current line
vim.o.cursorlineopt = "number" -- highlight only the line number

-- indentation
vim.o.expandtab = true -- convert tabs to spaces
vim.o.shiftwidth = 2 -- indent width
vim.o.smartindent = true -- auto indent based on syntax
vim.o.tabstop = 2 -- tab character width
vim.o.softtabstop = 2 -- soft tab width

-- user interface
vim.opt.fillchars = { eob = " " } -- replace ~ with spaces at the end of the buffer
vim.o.ignorecase = true -- case-insensitive search
vim.o.smartcase = true -- case-sensitive search if uppercase in query
vim.o.mouse = "a" -- enable mouse support

-- numbers & line wrapping
vim.o.number = true -- enable line numbers
vim.o.numberwidth = 2 -- gutter width for line numbers
vim.o.ruler = false -- disable showing cursor position in the status bar
vim.opt.whichwrap:append "<>[]hl" -- allow cursor wrap between lines with arrow keys and h, l

-- window behavior
vim.o.splitbelow = true -- split horizontal windows below
vim.o.splitright = true -- split vertical windows to the right
vim.o.signcolumn = "yes" -- always show the sign column (for git, diagnostics, etc.)

-- timings & undo
vim.o.timeoutlen = 400 -- time to wait for a mapped sequence to complete
vim.o.undofile = true -- enable persistent undo
vim.o.updatetime = 250 -- delay before triggering swap file write, cursorhold, etc.
vim.opt.swapfile = false -- disable swap file creation

-- mason.nvim path configuration
local is_windows = vim.fn.has "win32" ~= 0
local sep = is_windows and "\\" or "/"
local delim = is_windows and ";" or ":"
vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, sep) .. delim .. vim.env.PATH

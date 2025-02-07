-- Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- Line
vim.o.cursorline = true
vim.o.number = true
vim.o.signcolumn = 'no'
vim.opt.relativenumber = true

-- Undo
vim.o.undofile = true
vim.o.undodir = vim.fn.expand '~/.cache/nvim/undo'

-- Windows
vim.o.winfixwidth = true
vim.o.winfixheight = true

-- Miscellaneous
vim.g.mapleader = ' '
vim.o.pumheight = 40
vim.opt.clipboard = 'unnamedplus'
vim.opt.fillchars = { eob = ' ' }
vim.opt.mouse = ''
vim.opt.termguicolors = true
vim.lsp.inlay_hint.enable(true)

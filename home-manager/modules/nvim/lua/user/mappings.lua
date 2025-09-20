-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], {})
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], {})
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], {})
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], {})

-- Buffer management
vim.keymap.set('n', '<Tab>', vim.cmd.bnext, {})
vim.keymap.set('n', '<S-Tab>', vim.cmd.bprevious, {})
vim.keymap.set('n', '<leader>bd', ':bufdo bdelete<cr>', {})

-- Window resizing
vim.keymap.set('n', 'ß', ':horizontal resize +1<cr>', {})
vim.keymap.set('n', 'ü', ':horizontal resize -1<cr>', {})
vim.keymap.set('n', 'ö', ':vertical resize +1<cr>', {})
vim.keymap.set('n', 'ä', ':vertical resize -1<cr>', {})

-- Move lines
vim.keymap.set('n', '<A-j>', ':move .+1<cr>==')
vim.keymap.set('n', '<A-k>', ':move .-2<cr>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<cr>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<cr>gv=gv")

-- Go-tos
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', '<leader>r', function()
    vim.diagnostic.goto_next { float = false }
end, {})
vim.keymap.set('n', '<leader>R', function()
    vim.diagnostic.goto_prev { float = false }
end, {})

-- Plugin-specific
local telescope = require 'telescope.builtin'

vim.keymap.set('n', '<leader>f', telescope.find_files, {})
vim.keymap.set('n', '<leader>st', telescope.live_grep, {})
vim.keymap.set('n', '<leader>th', telescope.colorscheme, {})
vim.keymap.set('n', '<leader>sr', telescope.resume, {})
vim.keymap.set('n', '<leader>e', '<cmd>Oil<cr>', {})

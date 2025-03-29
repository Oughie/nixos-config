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
vim.keymap.set('n', '<Tab>', '<cmd>bnext<cr>', {})
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<cr>', {})
vim.keymap.set('n', '<leader>bd', '<cmd>bufdo bd<cr>', {})

-- Window resizing
vim.keymap.set('n', 'ß', '<cmd>horizontal resize +1<cr>', {})
vim.keymap.set('n', 'ü', '<cmd>horizontal resize -1<cr>', {})
vim.keymap.set('n', 'ö', '<cmd>vertical resize +1<cr>', {})
vim.keymap.set('n', 'ä', '<cmd>vertical resize -1<cr>', {})

-- Move lines
vim.keymap.set('n', '<A-j>', ':m .+1<cr>==')
vim.keymap.set('n', '<A-k>', ':m .-2<cr>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv")

-- Go-tos
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {})
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {})

-- Plugin-specific
vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<cr>', {})
vim.keymap.set('n', '<leader>st', '<cmd>Telescope live_grep<cr>', {})
vim.keymap.set('n', '<leader>th', '<cmd>Telescope colorscheme<cr>', {})
vim.keymap.set('n', '<leader>sr', '<cmd>Telescope resume<cr>', {})
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', {})

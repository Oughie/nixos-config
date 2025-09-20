return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup {
            signcolumn = false,
            numhl = true,
            linehl = false,
        }
    end,
}

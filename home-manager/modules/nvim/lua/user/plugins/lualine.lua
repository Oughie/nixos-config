return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                disabled_filetypes = { 'alpha' },
            },
            sections = {
                lualine_b = { 'branch', 'diagnostics' },
            },
        }
        vim.api.nvim_create_autocmd('BufEnter', {
            callback = function()
                vim.opt.laststatus = 3
            end,
        })
    end,
}

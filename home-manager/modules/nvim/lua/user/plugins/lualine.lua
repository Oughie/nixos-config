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
                lualine_c = {
                    {
                        'filename',
                        cond = function()
                            return vim.bo.filetype ~= 'NvimTree'
                        end,
                    },
                    {
                        'filename',
                        cond = function()
                            return vim.bo.filetype == 'NvimTree'
                        end,
                        fmt = function()
                            return 'Explorer' -- This changes the title to "Explorer" when NvimTree is open
                        end,
                    },
                },
            },
        }
        vim.api.nvim_create_autocmd('BufEnter', {
            callback = function()
                vim.opt.laststatus = 3
            end,
        })
    end,
}

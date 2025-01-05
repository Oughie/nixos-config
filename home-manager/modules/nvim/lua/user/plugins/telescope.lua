return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    config = function()
        require('telescope').setup {
            pickers = {
                colorscheme = {
                    enable_preview = true,
                },
            },
            defaults = {
                file_ignore_patterns = {
                    'Cargo.lock',
                    'build/',
                    'node_modules',
                    'target',
                    '%.svg',
                    'package%-lock%.json',
                },
            },
        }
    end,
    dependencies = { 'nvim-lua/plenary.nvim' },
}

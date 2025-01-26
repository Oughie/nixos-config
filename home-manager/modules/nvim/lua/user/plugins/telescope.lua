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
                    '%.lock',
                    'build/',
                    'node_modules',
                    'package.json',
                    'gen',
                    'target',
                    '%.svg',
                    'package%-lock%.json',
                },
            },
        }
    end,
    dependencies = { 'nvim-lua/plenary.nvim' },
}

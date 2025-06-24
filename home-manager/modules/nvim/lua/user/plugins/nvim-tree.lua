return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup {
            filters = {
                custom = {
                    '*.git',
                    '*.out',
                    '*.exe',
                    '*.class',
                    '*.lock',
                    '*.lockb',
                    'package.json',
                    'target',
                    'node_modules',
                    '.svelte-kit',
                },
            },
            respect_buf_cwd = true,
            sync_root_with_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = false,
            },
            view = {
                preserve_window_proportions = true,
            },
        }
    end,
}

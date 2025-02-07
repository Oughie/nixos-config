return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    cmd = 'NvimTreeToggle',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        lazy = true,
    },
    config = function()
        require('nvim-tree').setup {
            filters = {
                custom = { '*.git', '*.class', '*.lock', '*.lockb', 'package.json', 'target', 'node_modules' },
            },
            update_focused_file = {
                enable = true,
                update_root = true,
            },
            view = {
                preserve_window_proportions = true,
            },
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
        }
    end,
}

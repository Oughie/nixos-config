return {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPre',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').setup {
            ensure_installed = {
                'lua',
                'nix',
                'c',
                'cpp',
                'python',
                'java',
                'javascript',
                'typescript',
                'zig',
                'svelte',
                'html',
                'css',
                'glsl',
            },
        }
    end,
}

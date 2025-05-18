return {
    'neovim/nvim-lspconfig',
    event = 'BufReadPre',
    config = function()
        local lspconfig = require 'lspconfig'

        -- Lua
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        }

        -- Nix
        lspconfig.nil_ls.setup {}

        -- C / C++
        lspconfig.clangd.setup {
            init_options = {
                clangdFileStatus = true,
                clangdSemanticHighlighting = true,
            },
            filetypes = { 'c', 'cpp', 'cxx', 'cc' },
            cmd = {
                'clangd',
                '--background-index',
                '--offset-encoding=utf-16',
                '--compile-commands-dir=' .. vim.fn.getcwd() .. '/build',
            },
        }

        -- Python
        lspconfig.pylsp.setup {}

        -- Java
        lspconfig.jdtls.setup {}

        -- JavaScript / TypeScript
        lspconfig.ts_ls.setup {}

        -- Zig
        lspconfig.zls.setup {}
        vim.cmd.let 'g:zig_fmt_autosave = 0'

        -- Svelte
        lspconfig.svelte.setup {}
        vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
            pattern = { '*.svelte' },
            callback = function(args)
                vim.treesitter.start(args.buf, 'svelte')
            end,
        })

        -- GLSL
        lspconfig.glsl_analyzer.setup {}
        vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
            pattern = '*.glsl',
            callback = function(args)
                vim.treesitter.start(args.buf, 'glsl')
            end,
        })
    end,
}

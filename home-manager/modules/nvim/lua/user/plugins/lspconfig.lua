return {
    'neovim/nvim-lspconfig',
    event = 'BufReadPre',
    config = function()
        local lspconfig = require 'lspconfig'

        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        }
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
        lspconfig.pylsp.setup {}
        lspconfig.glsl_analyzer.setup {}
        lspconfig.jdtls.setup {}
        lspconfig.nil_ls.setup {}
        lspconfig.ts_ls.setup {}

        lspconfig.zls.setup {}
        vim.cmd.let 'g:zig_fmt_autosave = 0'

        vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
            pattern = '*.glsl',
            callback = function(args)
                vim.treesitter.start(args.buf, 'glsl')
            end,
        })
    end,
}

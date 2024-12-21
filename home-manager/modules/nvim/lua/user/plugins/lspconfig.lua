return {
    'neovim/nvim-lspconfig',
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
        lspconfig.pylsp.setup {}
        lspconfig.wgsl_analyzer.setup {}
        lspconfig.asm_lsp.setup {}
        lspconfig.clangd.setup {}
        lspconfig.jdtls.setup {}
        lspconfig.nil_ls.setup {}
        lspconfig.ts_ls.setup {}
        lspconfig.volar.setup {}
        lspconfig.biome.setup {}
        lspconfig.elixirls.setup {
            cmd = { '/usr/local/bin/elixir/language-server.sh' },
        }

        lspconfig.zls.setup {}
        vim.cmd.let 'g:zig_fmt_autosave = 0'

        vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
            pattern = '*.wgsl',
            callback = function()
                vim.bo.filetype = 'wgsl'
            end,
        })
    end,
}

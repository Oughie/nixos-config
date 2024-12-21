return {
    'jose-elias-alvarez/null-ls.nvim',
    enable = false,
    config = function()
        local null_ls = require 'null-ls'
        local formatting = null_ls.builtins.formatting
        local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

        null_ls.setup {
            sources = {
                formatting.stylua.with {
                    extra_args = {
                        '--indent-type',
                        'Spaces',
                        '--call-parentheses',
                        'None',
                        '--quote-style',
                        'AutoPreferSingle',
                    },
                },
                formatting.black.with {
                    extra_args = {
                        '--skip-string-normalization',
                        '--line-length',
                        '75',
                    },
                },
                formatting.isort,
                formatting.rustfmt,
                formatting.nixfmt,
                formatting.prettierd,
            },
            on_attach = function(client, bufnr)
                if client.supports_method 'textDocument/formatting' then
                    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format { async = false }
                        end,
                    })
                end
                if client.server_capabilities.document_formatting then
                    vim.cmd [[autocmd BufWritePre <buffer> lua vim lsp.buf.format({async = false}) ]]
                end
            end,
        }
    end,
}

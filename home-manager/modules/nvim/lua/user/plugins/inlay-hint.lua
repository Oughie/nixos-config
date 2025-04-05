return {
    'felpafel/inlay-hint.nvim',
    event = 'LspAttach',
    config = function()
        require('inlay-hint').setup()
        vim.lsp.inlay_hint.enable(true)
    end,
}

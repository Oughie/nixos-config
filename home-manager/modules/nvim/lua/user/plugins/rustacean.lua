return {
    'mrcjkb/rustaceanvim',
    ft = 'rust',
    version = '^5',
    config = function()
        vim.g.rustfmt_autosave = 1
    end,
}

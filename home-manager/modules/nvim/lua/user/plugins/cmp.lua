return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-vsnip', commit = '1ae05c6' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    },
    config = function()
        local cmp = require 'cmp'
        local luasnip = require 'luasnip'

        require('luasnip.loaders.from_vscode').lazy_load()

        local kind_icons = {
            Text = '',
            Method = '󰆧',
            Function = '󰊕',
            Constructor = '',
            Field = '󰇽',
            Variable = '󰂡',
            Class = '󰠱',
            Interface = '',
            Module = '',
            Property = '󰜢',
            Unit = '',
            Value = '󰎠',
            Enum = '',
            Keyword = '󰌋',
            Snippet = '',
            Color = '󰏘',
            File = '󰈙',
            Reference = '',
            Folder = '󰉋',
            EnumMember = '',
            Constant = '󰏿',
            Struct = '',
            Event = '',
            Operator = '󰆕',
            TypeParameter = '󰅲',
        }

        local opts = {
            scrollbar = false,
        }

        cmp.setup {
            window = {
                completion = cmp.config.window.bordered(opts),
                documentation = cmp.config.window.bordered(opts),
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            formatting = {
                format = function(_, item)
                    item.kind = string.format('%s %s', kind_icons[item.kind], item.kind)
                    return item
                end,
            },
            mapping = cmp.mapping.preset.insert {
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm { select = true },
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),

                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' }),
                ['<Up>'] = function(fallback)
                    if cmp.visible() then
                        cmp.close()
                    end
                    fallback()
                end,
                ['<Down>'] = function(fallback)
                    if cmp.visible() then
                        cmp.close()
                    end
                    fallback()
                end,
                ['<C-j>'] = cmp.mapping.scroll_docs(1),
                ['<C-k>'] = cmp.mapping.scroll_docs(-1),
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
                { name = 'path' },
            }),
        }
    end,
}

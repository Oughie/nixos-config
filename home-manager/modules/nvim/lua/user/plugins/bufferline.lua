return {
    'akinsho/bufferline.nvim',
    version = '*',
    event = 'BufRead',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local function diagnostics_indicator(_, _, diagnostics, _)
            local result = {}
            local symbols = {
                error = '',
                warning = '',
                info = '',
            }
            for name, count in pairs(diagnostics) do
                if symbols[name] and count > 0 then
                    table.insert(result, symbols[name] .. ' ' .. count)
                end
            end
            result = table.concat(result, ' ')
            return #result > 0 and result or ''
        end

        require('bufferline').setup {
            highlights = {
                background = {
                    color = '#ff0000',
                    italic = true,
                },
                buffer_selected = {
                    bold = true,
                },
            },
            options = {
                themable = true,
                auto_toggle_bufferline = true,
                mode = 'buffers',
                diagnostics = 'nvim_lsp',
                diagnostics_update_in_insert = false,
                diagnostics_indicator = diagnostics_indicator,
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'Explorer',
                        highlight = 'PanelHeading',
                        padding = 1,
                    },
                },
                always_show_bufferline = false,
                sort_by = 'id',
                debug = { logging = false },
            },
        }
    end,
}

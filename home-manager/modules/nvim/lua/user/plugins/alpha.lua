return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local function center_logo_vertically(logo_lines)
            local padding = math.max(0, math.floor(vim.fn.winheight(0) / 2) - #logo_lines)

            local centered_lines = {}
            for _ = 1, padding do
                table.insert(centered_lines, '')
            end

            for _, line in ipairs(logo_lines) do
                table.insert(centered_lines, line)
            end

            return centered_lines
        end

        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.dashboard'

        dashboard.section.header.val = center_logo_vertically {
            [[                                                    ]],
            [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
            [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
            [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
            [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
            [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
            [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
            [[                                                    ]],
        }

        dashboard.section.header.opts = {
            position = 'center',
            hl = 'String',
        }

        dashboard.section.buttons.val = {
            dashboard.button('f', '󰈞  Find File', '<cmd>Telescope find_files<cr>'),
            dashboard.button('t', '󰊄  Find Text', '<cmd>Telescope live_grep<cr>'),
            dashboard.button('c', '  Configuration', '<cmd>edit $HOME/Configuration/home-manager/modules/nvim/<cr>'),
            dashboard.button('q', '󰅖  Quit', '<cmd>q<cr>'),
        }

        alpha.setup(dashboard.opts)
    end,
}

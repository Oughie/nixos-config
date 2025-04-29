return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local logo = {
            [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
            [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
            [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
            [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
            [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
            [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
        }

        local function center_logo_vertically(ui_height)
            local padding = math.max(0, math.floor((vim.fn.winheight(0) - ui_height) / 2))

            local centered_lines = {}
            for _ = 1, padding do
                table.insert(centered_lines, '')
            end

            for _, line in ipairs(logo) do
                table.insert(centered_lines, line)
            end

            return centered_lines
        end

        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.dashboard'

        dashboard.section.header.val = center_logo_vertically(#logo + #dashboard.section.buttons.val * 2 - 3)

        dashboard.section.header.opts = {
            position = 'center',
            hl = 'String',
        }

        dashboard.section.buttons.val = {
            dashboard.button('f', '󰈞  Find File', '<cmd>Telescope find_files<cr>'),
            dashboard.button('t', '󰊄  Find Text', '<cmd>Telescope live_grep<cr>'),
            dashboard.button('n', '󰚸  Open Quick Notes', '<cmd>edit $HOME/Documents/NOTES.md<cr>'),
            dashboard.button('c', '  Edit Configuration', '<cmd>edit $HOME/Configuration<cr>'),
            dashboard.button('q', '󰅖  Quit', '<cmd>q<cr>'),
        }

        alpha.setup(dashboard.opts)
    end,
}

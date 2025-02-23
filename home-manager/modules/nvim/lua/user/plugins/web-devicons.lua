return {
    'nvim-tree/nvim-web-devicons',

    config = function()
        local shader = {
            icon = '󰕣',
            color = '#cba6f7',
            name = 'Shader',
        }

        require('nvim-web-devicons').setup {
            override_by_extension = {
                ['glsl'] = shader,
                ['wgsl'] = shader,
                ['vert'] = shader,
                ['frag'] = shader,
            },
        }
    end,
}

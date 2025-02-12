return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 999,
    config = function()
        require('catppuccin').setup {
            custom_highlights = function(colors)
                local keyword = { bold = true, fg = colors.mauve }

                return {
                    Keyword = { bold = true },
                    String = { italic = true },
                    Character = { italic = true },
                    Conditional = { bold = true },
                    Boolean = { bold = true, italic = true },
                    Macro = { italic = true },
                    CursorLineNr = { bold = true },
                    Constant = { bold = true },
                    Label = { bold = true },
                    Repeat = { bold = true },
                    Special = { underline = true },
                    Error = { undercurl = true },

                    -- JavaScript
                    javascriptStatement = keyword,

                    -- Java
                    javaStatement = keyword,
                    javaExternal = keyword,

                    -- Python
                    pythonStatement = keyword,
                    pythonInclude = keyword,
                    pythonException = keyword,

                    -- C/C++
                    cStorageClass = keyword,
                    cppModifier = keyword,
                    Statement = keyword,
                    Structure = keyword,
                    Exception = keyword,
                    PreProc = { link = 'Macro' },
                    Include = { link = 'Macro' },
                    ['@lsp.mod.readonly.cpp'] = { bold = true, fg = colors.peach },
                    ['@lsp.type.namespace.cpp'] = { fg = colors.yellow },
                    ['@lsp.type.property.cpp'] = { fg = colors.red },

                    -- Lua
                    ['@property.lua'] = { italic = true },
                    ['@function.builtin.lua'] = { bold = true, fg = colors.peach },

                    -- Rust
                    ['@lsp.type.const.rust'] = { bold = true, fg = colors.peach },
                    ['@keyword.import.rust'] = keyword,
                    ['@function.macro.rust'] = { bold = true, italic = true, fg = colors.teal },

                    -- Miscellaneous
                    ['@keyword.function'] = keyword,
                    ['@keyword.return'] = keyword,
                }
            end,
        }
        vim.cmd.colorscheme 'catppuccin'
    end,
}

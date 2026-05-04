return {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("colorizer").setup({
            filetypes = {
                "*", -- Все файлы
                "!lua", -- Кроме lua (опционально)
            },
            user_default_options = {
                RGB = true,         -- #RGB
                RRGGBB = true,      -- #RRGGBB
                RRGGBBAA = true,    -- #RRGGBBAA
                rgb_fn = true,      -- rgb()
                hsl_fn = true,      -- hsl()
                css = true,         -- CSS цвета (red, blue, etc.)
                css_fn = true,      -- CSS функции (var(), etc.)
                mode = "background", -- "background" | "foreground" | "virtualtext"
                tailwind = false,   -- Включить Tailwind CSS (если используешь)
                virtualtext = "■",  -- Символ для виртуального текста
            },
        })
    end,
}

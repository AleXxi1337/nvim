return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',

    opts = {
        appearance = {
            nerd_font_variant = 'mono'
        },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },

        keymap = {
            preset = "none",
            ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<Tab>"] = { "select_and_accept", "fallback" },
            ["<C-y>"] = { "select_and_accept" },
            ["<C-e>"] = { "hide", "fallback" },
            ["<Esc>"] = { "hide", "fallback" },
            ["<C-n>"] = { "select_next", "fallback" },
            ["<C-p>"] = { "select_prev", "fallback" },
        },
        completion = {
            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },
            list = {
                selection = {
                    auto_insert = false,
                    preselect = true,
                },
            },
            menu = {
                draw = {
                    columns = { { "kind_icon" }, { "label", "label_description" } },
                },
            },
        },
    },
    opts_extend = { "sources.default" }
}

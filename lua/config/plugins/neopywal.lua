return {
    "RedsXDD/neopywal.nvim",
    name = "neopywal",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("neopywal").setup({
            fileformats = {
                python = true,
            },
            dim_inactive = false,
            transparent_background = true,
            terminal_colors = false,
            plugins = {
                snacks = {
                    enabled = false,
                    scope_color = "",
                    current_scope_color = "",
                },
                noice = true,
                notify = true,
                treesitter = true,
                telescope = {
                    enabled = true,
                },
                blink_cmp = true,
            },
            vim.cmd.colorscheme("neopywal")
        })

        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "neopywal",
            callback = function()
                local U = require("neopywal.utils.color")
                local C = require("neopywal").get_colors()

                local indent_color = U.blend(C.background, C.color3, 0.8)

                vim.api.nvim_set_hl(0, "SnacksIndent", { fg = indent_color })
                vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = indent_color })
                vim.api.nvim_set_hl(0, "WinSeparator", { fg = indent_color })
            end,
        })
    end
}

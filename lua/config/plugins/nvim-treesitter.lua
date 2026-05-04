return {
    'nvim-treesitter/nvim-treesitter',
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            ensure_installed = {
                "lua",
                "javascript",
                "typescript",
                "tsx",
                "python",
                "json",
                "jsonc",
                "toml",
                "yaml",
                "html",
                "css",
                "regex",
                "dockerfile",
                "gitignore",
            },
            auto_install = false,
        })
    end
}

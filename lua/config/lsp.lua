vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
vim.lsp.enable("qmlls")

local severity = vim.diagnostic.severity

vim.diagnostic.config({
    virtual_text = true,
    signs = {
        text = {
            [severity.ERROR] = " ",
            [severity.WARN] = " ",
            [severity.HINT] = "󰌵 ",
            [severity.INFO] = "󰙎 ",
        }
    }
})

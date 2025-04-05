return {
    "folke/lsp-colors.nvim",
    lazy = true,
    priority = 1000,
    config = function()
        require("lsp-colors").setup({
        Error = "#F44747",
        Warning = "#FF8800",
        Information = "#61AFEF",
        Hint = "#56B6C2",
        })
    end,
}
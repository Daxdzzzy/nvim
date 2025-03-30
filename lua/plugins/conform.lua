return {
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    c = { "clang-format" },
                    rust = { "rustfmt" },
                    bash = { "shfmt" },
                    sql = { "sqlfluff" },
                    css = { "prettier" },
                },
            })
        end
    }
}


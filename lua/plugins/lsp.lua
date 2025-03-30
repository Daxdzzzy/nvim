return {
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",       -- C/C++
                    "rust_analyzer",-- Rust
                    "bashls",       -- Bash/Zsh
                    "sqlls",        -- SQL
                    "cssls",        -- CSS
		    "lua_ls",
                },
            })

            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.bashls.setup({})
            lspconfig.sqlls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.lua_ls.setup({})
        end
    }
}


return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            local wk = require("which-key")

            wk.setup({
                plugins = {
                    marks = true,
                    registers = true,
                    spelling = { enabled = true },
                    presets = {
                        operators = true,
                        motions = true,
                        text_objects = true,
                    },
                },
                replace = { ["<leader>"] = "SPC" },
                icons = {
                    breadcrumb = "»",
                    separator = "➜",
                    group = " ",
                },
                win = {  -- 📌 Corregido `win` en vez de `window`
                    border = "rounded",
                    position = "bottom",
                    margin = { 1, 0, 1, 0 },
                    padding = { 1, 1, 1, 1 },
                },
                triggers = { "<leader>" },
            })

            -- 🗂️ Mapeos con nueva sintaxis
            wk.add({
                { "<leader>f", group = "🗂️ Files" },
                { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "🔍 Buscar Archivos" },
                { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "📜 Archivos Recientes" },

                { "<leader>g", group = "🌿 Git" },
                { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "✅ Stage Hunk" },
                { "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "↩️ Undo Stage" },
                { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "🔍 Preview Hunk" },

                { "<leader>l", group = "🚀 LSP" },
                { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "📌 Ir a Definición" },
                { "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "🔗 Referencias" },
                { "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", desc = "📝 Formatear Código" },

                { "<leader>t", group = "🪄 Terminal" },
                { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "🖥️ Abrir Terminal" },

                { "<leader>w", proxy = "<c-w>", group = "🖼️ Ventanas" },

                { "<leader>b", group = "📑 Buffers" },
                { "<leader>bd", "<cmd>bd<cr>", desc = "❌ Cerrar Buffer" },
                { "<leader>bn", "<cmd>bnext<cr>", desc = "➡️ Siguiente Buffer" },
                { "<leader>bp", "<cmd>bprev<cr>", desc = "⬅️ Buffer Anterior" },

                { "<leader>wh", function()
                    require("which-key").show({
                        keys = "<c-w>",
                        loop = true,
                    })
                end, desc = "🐙 Hydra Windows" },
            })
        end
    }
}


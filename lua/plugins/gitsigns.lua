return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "┃" },
                    change = { text = "┃" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                },
                numhl = false, -- No resaltar el número de línea
                linehl = false, -- No resaltar la línea completa
                signcolumn = true, -- Mostrar signos en la columna de la izquierda
                watch_gitdir = { interval = 1000 }, -- Verifica cambios cada segundo
                attach_to_untracked = true,
            })
        end
    }
}


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("plugins.colorscheme"),
    require("plugins.telescope"),
    require("plugins.lsp"),
    require("plugins.mason"),
    require("plugins.cmp"),
    require("plugins.treesitter"),
    require("plugins.lualine"),
    require("plugins.conform"),
    require("plugins.dadbod"),
    require("plugins.gitsigns"),
    require("plugins.which-key"),
    require("plugins.minicons")
})


local opt = vim.opt

opt.number = true              -- Show line numbers
opt.relativenumber = true      -- Show relative numbers
opt.tabstop = 4                -- Tab width
opt.shiftwidth = 4             -- Indentation width
opt.expandtab = true           -- Convert tabs to spaces
opt.termguicolors = true       -- Enable 24-bit RGB colors
opt.wrap = false               -- Disable line wrap
opt.ignorecase = true          -- Ignore case in search
opt.smartcase = true           -- Smart case sensitivity
opt.cursorline = true          -- Highlight current line
opt.splitright = true          -- Split to the right
opt.splitbelow = true          -- Split below
opt.clipboard = "unnamedplus"
vim.g.mapleader = " "  -- Set leader key to Space


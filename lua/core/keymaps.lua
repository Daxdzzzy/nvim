local map = vim.keymap.set


-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move Left" })
map("n", "<C-l>", "<C-w>l", { desc = "Move Right" })
map("n", "<C-j>", "<C-w>j", { desc = "Move Down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move Up" })


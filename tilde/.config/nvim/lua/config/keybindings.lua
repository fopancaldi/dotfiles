vim.keymap.set("n", "<leader>ch", function()
  vim.cmd("noh")
end, { desc = "Clear search highlight", noremap = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal", noremap = true })

vim.keymap.set("n", "gl", "$", { desc = "Go to line begin", noremap = true })
vim.keymap.set("n", "gh", "0", { desc = "Go to line end", noremap = true })

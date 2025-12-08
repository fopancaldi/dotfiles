-- Clear seach highlight
vim.keymap.set("n", "<leader>ch", function()
	vim.cmd("noh")
end, { desc = "Clear search highlight" })

-- Exit terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Helix-like line navigation
vim.keymap.set("n", "gl", "$", { noremap = true, desc = "Go to line begin" })
vim.keymap.set("n", "gh", "0", { noremap = true, desc = "Go to line end" })

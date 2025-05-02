-- Clear seach highlight
vim.keymap.set("n", "<leader>ch", function()
	vim.cmd("noh")
end, { desc = "Clear search highlight" })

-- Remap terminal exit
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

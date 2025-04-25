-- Clear seach highlight
vim.keymap.set("n", "<leader>ch", function()
	vim.cmd("noh")
end, { desc = "Clear search highlight" })

-- Remap terminal exit
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })

-- Open terminal in a new tab
vim.keymap.set("n", "<leader>t", function()
	vim.cmd("tabnew")
	vim.cmd("terminal")
end, { desc = "Open terminal in new tab" })

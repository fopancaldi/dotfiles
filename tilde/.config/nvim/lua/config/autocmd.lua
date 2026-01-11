vim.api.nvim_create_autocmd({ "TermOpen" }, {
	command = "startinsert",
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*.pdf" },
	command = "execute \"!zathura '%'\" | bdelete %",
})

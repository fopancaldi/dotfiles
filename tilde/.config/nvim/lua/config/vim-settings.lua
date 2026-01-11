require("config.pre_lazy")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true
vim.opt.scrolloff = 10
vim.cmd("set guicursor=n-v-ve:block,i-r-c-ci-cr-t:ver25,o:hor50,a:blinkon0")

vim.diagnostic.config({ virtual_text = true })

vim.cmd("set clipboard+=unnamedplus")

vim.cmd("set ignorecase")

vim.filetype.add({
	extension = {
		dat = "dat",
		tpp = "cpp",
	},
	-- No idea why the pattern '/%.sway/config$' does not match
	pattern = {
		[".*/sway/config%.d/.*"] = "swayconfig",
	},
})

vim.api.nvim_create_autocmd({ "TermOpen" }, {
	command = "startinsert",
})
vim.cmd([[autocmd BufEnter *.pdf execute "!zathura '%'" | bdelete %]])

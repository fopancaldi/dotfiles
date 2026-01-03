return {
	"morhetz/gruvbox",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("let g:gruvbox_italic='1'")
		vim.cmd("let g:gruvbox_constrast_dark='hard'")
		vim.cmd("colorscheme retrobox")
	end,
}

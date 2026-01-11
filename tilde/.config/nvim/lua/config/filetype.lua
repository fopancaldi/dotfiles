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

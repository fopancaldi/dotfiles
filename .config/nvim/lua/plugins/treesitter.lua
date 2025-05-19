return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"bash",
				"bibtex",
				"cpp",
				"cuda",
				"fortran",
				--"latex",
				"lua",
				"markdown",
				"markdown_inline",
				"regex",
				"vim",
				"vimdoc",
				"xml",
			},
			highlight = {
				enable = true,
			},
			indent = { enable = true },
		})
	end,
}

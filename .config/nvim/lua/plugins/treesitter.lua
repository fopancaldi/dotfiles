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
				"fortran",
				--"latex",
				"lua",
				"markdown",
				"markdown_inline",
				"regex",
				"vim",
				"vimdoc",
			},
			highlight = {
				enable = true,
			},
			indent = { enable = true },
		})
	end,
}

return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	keys = {
		{
			"<leader>Gd",
			function()
				require("gitsigns").diffthis(base, { split = "rightbelow" })
				vim.cmd("wincmd l")
			end,
			desc = "View changes of this file",
		},
	},
	opts = {},
}

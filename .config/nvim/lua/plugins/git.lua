return {
	"lewis6991/gitsigns.nvim",
	keys = {
		{
			"<leader>gd",
			function()
				require("gitsigns").diffthis()
			end,
			desc = "View changes of this file",
		},
	},

	opts = {},
}

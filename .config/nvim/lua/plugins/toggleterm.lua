return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {},
	keys = {
		{
			"<leader>tt",
			function()
				local ntpath = require("neo-tree.sources.manager").get_state("filesystem").path
				vim.cmd("ToggleTerm direction=float dir=" .. ntpath)
			end,
			desc = "Toggle floating terminal",
		},
	},
}

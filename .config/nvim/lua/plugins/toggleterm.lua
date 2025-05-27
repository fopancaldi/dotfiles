return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {},
	keys = {
		{
			"<leader>tt",
			function()
				vim.cmd("ToggleTerm direction=float")
			end,
			desc = "Toggle floating terminal",
		},
	},
}

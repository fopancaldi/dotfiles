return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {},
	keys = {
		{
			"<leader>tt",
			function()
				vim.cmd("ToggleTerm")
			end,
			desc = "Toggle floating terminal",
		},
	},
}

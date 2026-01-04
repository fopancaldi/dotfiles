return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {},
	keys = {
		-- TODO: Handle the case when there is no neo-tree instalce, like when this command is run after opening nvim by just typing "nvim"
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

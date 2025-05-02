return {
	"voldikss/vim-floaterm",
	keys = {
		{
			"<leader>tt",
			function()
				vim.cmd("FloatermToggle")
			end,
			desc = "Toggle floating terminal",
		},
	},
}

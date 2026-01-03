return {
	"ErichDonGubler/lsp_lines.nvim",
	keys = {
		{
			"<leader>lt",
			function()
				require("lsp_lines").toggle()
			end,
			desc = "Toggle lsp lines",
		},
	},
	opts = {},
}

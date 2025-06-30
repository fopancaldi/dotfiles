return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 5000,
				})
			end,
			desc = "Format file or range (in visual mode)",
		},
	},
	opts = {
		formatters_by_ft = {
			bash = { "beautysh" },
			cmake = { "gersemi" },
			cpp = { "clang-format" },
			cu = { "clang-format" },
			fortran = { "fprettify" },
			latex = {
				"latexindent",
				"bibtex-tidy",
			},
			lua = { "stylua" },
			markdown = { "prettier" },
			yaml = { "prettier" },
		},
		formatters = {
			fprettify = {
				prepend_args = { "--indent", "2" },
			},
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 2000,
		},
	},
}

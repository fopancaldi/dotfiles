return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{
			"<leader>mp",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			desc = "Format file or range (in visual mode)",
		},
	},
	opts = {
		formatters_by_ft = {
			cmake = { "gersemi" },
			cpp = { "clang-format" },
			fortran = { "fprettify" },
			latex = {
				"latexindent" --[[, "bibtex-tidy"]],
			},
			lua = { "stylua" },
			markdown = { "prettier" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
		-- This was inside the function "config", can you rewrite so that it can be inside "opts"?
		--[[conform.formatters.fprettify = {
				prepend_args = { "--indent", "2" },
			}]]
	},
}

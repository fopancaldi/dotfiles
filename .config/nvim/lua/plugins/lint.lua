return {
	"mfussenegger/nvim-lint",
	keys = {
		{
			"<leader>l",
			function()
				require("lint").try_lint()
			end,
			desc = "Trigger linting for current file",
		},
	},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			cmake = { "cmakelint" },
			cpp = { --[["cpplint"]]
			},
			latex = { "vale" },
			lua = { "luacheck" },
			markdown = { "alex" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}

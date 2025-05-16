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
			bash = { "shellcheck" },
			cmake = { "cmakelint" },
			--cpp = { "cpplint" },
			--TODO: cuda
			latex = { "vale" },
			lua = { "luacheck" },
			markdown = { "alex" },
			yaml = { "yamllint" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}

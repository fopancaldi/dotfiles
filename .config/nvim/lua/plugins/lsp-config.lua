return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				-- CMake
				"neocmakelsp",
				"cmakelint",
				"gersemi",
				-- C++
				"clangd",
				"clang-format",
				"cpplint",
				-- Fortran
				"fortls",
				"fprettify",
				-- No available Fortran linters in mason.nvim!
				-- Latex
				"texlab",
				"vale",
				"latexindent",
				"bibtex-tidy",
				-- Lua
				"lua-language-server",
				"stylua",
				"luacheck",
				-- Markdown
				"marksman",
				"prettier",
				--"alex",
			},
		},
	},
	{
		-- Since I also am using mason-tool-installer, I do not know if I should keep this
		-- But I probably should, since this does not simply install the lang. servers
		"williamboman/mason-lspconfig",
		dependencies = { "williamboman/mason.nvim" },
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig", "hrsh7th/cmp-nvim-lsp" },
		config = function()
			local lspconfig = require("lspconfig")
			local ls_capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.neocmake.setup({ capabilities = ls_capabilities })
			lspconfig.clangd.setup({
				capabilities = ls_capabilities,
				init_options = {
					fallbackFlags = { "--std=c++23" },
				},
			})
			lspconfig.fortls.setup({ capabilities = ls_capabilities })
			lspconfig.lua_ls.setup({ capabilities = ls_capabilities })
			lspconfig.marksman.setup({ capabilities = ls_capabilities })
			lspconfig.texlab.setup({ capabilities = ls_capabilities })

			-- See https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls
			-- It is an alternative way of setting up lua_ls

			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
		end,
	},
}

return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				-- bash
				"bash-language-server",
				"beautysh",
				"shellcheck",
				-- CMake
				"neocmakelsp",
				"gersemi",
				"cmakelint",
				-- C++
				"clangd",
				"cpplint",
				"clang-format",
				-- CUDA
				-- clangd already instaled for C++
				-- linter ???
				-- clang-format already installed for C++
				-- Fortran
				"fortls",
				-- No available Fortran linters in mason.nvim!
				"fprettify",
				-- Latex
				"texlab",
				"vale",
				"latexindent",
				"bibtex-tidy",
				-- Lua
				"lua-language-server",
				"luacheck",
				"stylua",
				-- Markdown
				"marksman",
				"alex",
				"prettier",
				-- TODO: XML
				--"sonarlint-language-server",
				"lemminx",
				"xmlformatter",
				-- YAML
				"yaml-language-server",
				"yamllint",
				-- prettier already installed for Markdown
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason.nvim", "hrsh7th/cmp-nvim-lsp" },
		config = function()
			local lspconfig = require("lspconfig")
			local ls_capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.bashls.setup({ capabilities = ls_capabilities })
			lspconfig.neocmake.setup({ capabilities = ls_capabilities })
			lspconfig.clangd.setup({
				capabilities = ls_capabilities,
				init_options = {
					fallbackFlags = { "--std=c++23" },
				},
				cmd = { "clangd", "--enable-config" },
			})
			lspconfig.fortls.setup({ capabilities = ls_capabilities })
			lspconfig.texlab.setup({ capabilities = ls_capabilities })
			lspconfig.lua_ls.setup({ capabilities = ls_capabilities })
			lspconfig.marksman.setup({ capabilities = ls_capabilities })
			lspconfig.yamlls.setup({ capabilities = ls_capabilities })

			-- See https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls
			-- It is an alternative way of setting up lua_ls

			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
		end,
	},
}

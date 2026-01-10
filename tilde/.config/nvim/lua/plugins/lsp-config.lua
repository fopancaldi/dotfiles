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
				"cmakelang", -- provides both formatter and linter
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
				-- Lua
				"lua-language-server",
				"luacheck",
				"stylua",
				-- Markdown
				"marksman",
				"alex",
				"prettier",
				-- Rust
				-- managed via rustup
				-- Tex
				"texlab",
				"vale", -- see https://github.com/mfussenegger/nvim-lint/issues/528
				"latexindent",
				"bibtex-tidy",
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
			lspconfig.neocmake.setup({ capabilities = ls_capabilities, cmd = { "neocmakelsp", "stdio" } })
			lspconfig.clangd.setup({
				capabilities = ls_capabilities,
				init_options = {
					fallbackFlags = {
						"--std=c++20",
						"-DALPAKA_ACC_CPU_B_SEQ_T_SEQ_ENABLED",
						"-I" .. os.getenv("HOME") .. "/alpaka/include",
						"-I" .. os.getenv("HOME") .. "/alpaka_tutorial/hpp",
						"-I" .. os.getenv("HOME") .. "/alpaka_tutorial/build/_deps/alpaka-src/include",
						"-I" .. os.getenv("HOME") .. "/CLUEstering/include",
						"-I" .. os.getenv("HOME") .. "/cpp_psb/src",
						"-I" .. os.getenv("HOME") .. "/cpp_psb/build/_deps/alpaka-src/include",
						"-I" .. os.getenv("HOME") .. "/cpp_psb/build/_deps/doctest-src/doctest",
						"-I" .. os.getenv("HOME") .. "/cpp_psb/build/_deps/cluestering-src/include",
						"-I" .. os.getenv("HOME") .. "/root/include",
						"-I" .. os.getenv("HOME") .. "/xstl/include",
					},
				},
				cmd = { "clangd", "--enable-config" },
			})
			lspconfig.fortls.setup({ capabilities = ls_capabilities })
			lspconfig.lua_ls.setup({ capabilities = ls_capabilities })
			lspconfig.marksman.setup({ capabilities = ls_capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = ls_capabilities })
			lspconfig.texlab.setup({
				capabilities = ls_capabilities,
			})
			lspconfig.yamlls.setup({ capabilities = ls_capabilities })

			-- See https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls
			-- It is an alternative way of setting up lua_ls

			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			vim.keymap.set({ "n" }, "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set({ "n" }, "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
		end,
	},
}

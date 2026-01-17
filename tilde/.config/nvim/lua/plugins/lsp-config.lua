return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "hrsh7th/cmp-nvim-lsp" },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "clangd", "lua_ls" },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = {
        -- TODO: Clean up here
        -- bash
        -- "bash-language-server",
        "beautysh",
        "shellcheck",
        -- CMake
        -- "neocmakelsp",
        "cmakelang",
        "gersemi",
        -- C++
        -- "clangd",
        "cpplint",
        "clang-format",
        -- CUDA
        -- clangd already instaled for C++
        -- linter ???
        -- clang-format already installed for C++
        -- Fortran
        -- "fortls",
        -- No available Fortran linters in mason.nvim!
        "fprettify",
        -- Lua
        -- "lua-language-server",
        "luacheck",
        "stylua",
        -- Markdown
        -- "marksman",
        "alex",
        "prettier",
        -- Rust
        -- managed via rustup
        -- Tex
        -- "texlab",
        -- "vale", -- see https://github.com/mfussenegger/nvim-lint/issues/528
        "latexindent",
        "bibtex-tidy",
        -- TODO: XML
        --"sonarlint-language-server",
        "lemminx",
        "xmlformatter",
        -- YAML
        -- "yaml-language-server",
        "yamllint",
        -- prettier already installed for Markdown
      },
    },
  },
}

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
      ensure_installed = {
        "bashls",
        "neocmake",
        "clangd",
        "fortls",
        "lua_ls",
        "marksman",
        "texlab",
        "lemminx",
        "yamlls",
      },
      automatic_enable = {
        -- TODO: In here, I can put all the formatters & linters, since there is no error if the "server" name is not recognized
        exclude = { "stylua" },
      },
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
        -- Haskell (TODO: managed by ghcup or similar?)
        --"haskell-language-server",
        --"hlint",
        --"ormolu",
        -- Lua
        -- "lua-language-server",
        "luacheck",
        "stylua",
        -- Markdown
        -- "marksman",
        "alex",
        "prettier",
        -- Python
        "pyright",
        -- linter
        "ruff",
        -- Rust
        -- managed via rustup
        -- Tex
        -- "texlab",
        -- "vale", -- see https://github.com/mfussenegger/nvim-lint/issues/528
        "latexindent",
        "bibtex-tidy",
        -- Typst
        "tinymist",
        "prettypst",
        -- TODO: XML
        --"sonarlint-language-server",
        -- "lemminx",
        "xmlformatter",
        -- YAML
        -- "yaml-language-server",
        "yamllint",
        -- prettier already installed for Markdown
      },
    },
  },
}

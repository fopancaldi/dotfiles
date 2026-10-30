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
      cmake = { "cmake_format" },
      cpp = { "clang-format" },
      cu = { "clang-format" },
      fortran = { "fprettify" },
      haskell = { "ormolu" },
      lua = { "stylua" },
      matlab = { "mh_style" },
      markdown = { "prettier" },
      python = { "ruff" },
      rust = { "rustfmt" },
      sh = { "beautysh" },
      -- texlab already handles formatting
      typst = { "tinymist" },
      yaml = { "prettier" },
    },
    formatters = {
      fprettify = {
        prepend_args = { "--indent=2" },
      },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 2000,
    },
  },
}

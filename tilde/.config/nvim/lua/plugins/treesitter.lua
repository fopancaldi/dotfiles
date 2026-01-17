return {
  "nvim-treesitter/nvim-treesitter",
  version = "0.10.0",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "bibtex",
      "cpp",
      "cuda",
      "fortran",
      --"latex",
      "lua",
      "markdown",
      "markdown_inline",
      "regex",
      "vim",
      "vimdoc",
      "xml",
    },
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}

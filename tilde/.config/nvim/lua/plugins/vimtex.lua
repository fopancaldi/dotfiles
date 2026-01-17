return {
  "lervag/vimtex",
  lazy = false,
  -- TODO: Autoload this only when entering a buffer with extension .tex, .bibtex or similar
  -- Also use opts
  init = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_latexmk = { out_dir = "build" }
  end,
}

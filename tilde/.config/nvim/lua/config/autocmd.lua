vim.api.nvim_create_autocmd({ "TermOpen" }, {
  command = "startinsert",
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.pdf" },
  command = "execute \"!zathura '%'\" | bdelete %",
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.png" },
  -- TODO: Figure out why wincmd is "necessary" and find a proper command
  command = "execute \"!swayimg '%'\" | bdelete % | wincmd h",
})

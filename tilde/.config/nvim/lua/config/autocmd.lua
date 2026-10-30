vim.api.nvim_create_autocmd({ "TermOpen" }, {
  command = "startinsert",
})
--[[ vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.pdf" },
  command = "execute \"!xdg-open '%'\" | bdelete %",
}) ]]
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.pdf", "*.png" },
  -- TODO: Figure out why wincmd is "necessary" and find a proper command
  -- command = "execute \"!xdg-open '%'\" | bdelete % | wincmd h",
  command = "execute \"!xdg-open '%'\" | bdelete %",
})

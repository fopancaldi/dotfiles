vim.keymap.set("n", "<leader>ch", function()
  vim.api.nvim_command("nohlsearch")
end, { desc = "Clear search highlight", noremap = true })
vim.keymap.set("n", "<leader>pp", function()
  print(vim.api.nvim_buf_get_name(0))
end, { desc = "Print buffer path", noremap = true })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal insert mode", noremap = true })

vim.keymap.set("n", "<leader>tn", function()
  vim.api.nvim_command("tabnew")
  local has_neotree, neotree = pcall(require, "neo-tree.command")
  if has_neotree then
    neotree.execute({
      dir = os.getenv("HOME"),
    })
  else
    print("shirou")
  end
end, { desc = "Open home in new tab", noremap = true })
vim.keymap.set("n", "<leader>tc", function()
  vim.api.nvim_command("tabclose")
end, { desc = "Close current tab", noremap = true })

vim.keymap.set("n", "gl", "$", { desc = "Go to line begin", noremap = true })
vim.keymap.set("n", "gh", "0", { desc = "Go to line end", noremap = true })

vim.keymap.set("n", "<leader>lt", function()
  local current_conf = vim.diagnostic.config()
  assert(current_conf ~= nil)
  vim.diagnostic.config({
    virtual_text = not current_conf.virtual_text,
    virtual_lines = not current_conf.virtual_lines,
  })
end, { desc = "Toggle lsp lines", noremap = true })

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })

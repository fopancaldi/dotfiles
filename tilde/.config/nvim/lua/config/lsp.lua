vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.config("rust_analyzer", {})
vim.lsp.enable("rust_analyzer")

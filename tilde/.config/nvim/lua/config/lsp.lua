vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.config("clangd", {})
vim.lsp.enable("clangd")

vim.lsp.config("hls", {})
vim.lsp.enable("hls")

vim.lsp.config("nil_ls", {})
vim.lsp.enable("nil_ls")

vim.lsp.config("rust_analyzer", {})
vim.lsp.enable("rust_analyzer")

require("config.pre_lazy")

vim.opt.clipboard:append("unnamedplus")
vim.opt.guicursor = "n-v-ve:block,i-r-c-ci-cr-t:ver25,o:hor50,a:blinkon0"
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.diagnostic.config({ virtual_text = true })
vim.lsp.set_log_level("off")

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.cmd("colorscheme retrobox")

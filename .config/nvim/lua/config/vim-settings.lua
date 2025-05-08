-- Vim-specific settings (independent from plugins etc.)

-- Required by lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable mouse
vim.cmd("set mouse=")

-- Cosmetic stuff
vim.cmd("colorscheme retrobox")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true
-- TODO: Replace with the line below in Neovim >= 0.11
vim.cmd("set guicursor=n-v-ve:block,i-r-c-ci-cr:ver25,o:hor50,a:blinkwait700-blinkoff400-blinkon250")
--vim.cmd("set guicursor=n-v-ve:block,i-r-c-ci-cr-t:ver25,o:hor50,a:blinkwait700-blinkoff400-blinkon250")

-- Diagnostic stuff
vim.diagnostic.config({ virtual_text = true })

-- Autocommand stuff
vim.api.nvim_create_autocmd({ "TermOpen" }, {
	command = "startinsert",
})

-- Clipboard stuff
vim.cmd("set clipboard+=unnamedplus")

-- Search stuff
vim.cmd("set ignorecase")

-- File-specific settings are in "after/ftconfig"

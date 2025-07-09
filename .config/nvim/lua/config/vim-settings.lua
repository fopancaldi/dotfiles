-- Vim-specific settings (independent from plugins etc.)

-- Required by lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Cosmetic stuff
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true
-- TODO: Replace with the line below in Neovim >= 0.11
vim.cmd("set guicursor=n-v-ve:block,i-r-c-ci-cr:ver25,o:hor50,a:blinkon0")
--vim.cmd("set guicursor=n-v-ve:block,i-r-c-ci-cr-t:ver25,o:hor50,a:blinkon0")

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

-- Tell nvim that the files with the ".dat" extension need to be interpreted with dat.lua
vim.filetype.add({
	extension = {
		dat = "dat",
	},
})

-- Open pdf files with zathura when their buffer is loaded
vim.cmd([[autocmd BufEnter *.pdf execute "!zathura '%'" | bdelete %]])

-- Folding stuff
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = ""
vim.opt.fillchars = "fold: "
vim.opt.foldcolumn = "0"
vim.opt.foldnestmax = 4
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "checkhealth", "dashboard", "markdown", "neo-tree", "TelescopeResults" },
	command = "setlocal nofoldenable",
})

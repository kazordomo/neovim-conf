require('plugins.init')
require('mappings')

-- colorscheme
vim.cmd [[colorscheme gruvbox]]
vim.background = "dark"

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.nuw = 5

vim.o.textwidth = 100
vim.o.showmatch = true
vim.o.tabstop = 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

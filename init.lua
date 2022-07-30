require('plugins.init')
require('mappings')

-- colorscheme
vim.cmd [[colorscheme gruvbox]]

-- vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.nuw = 5

vim.o.textwidth = 100
vim.o.showmatch = true
vim.o.tabstop = 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true

vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.formatoptions = vim.o.formatoptions .. 'tcrqnj' -- ?? do not append with comment on new line


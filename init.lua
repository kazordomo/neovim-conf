require('plugins.init')
require('mappings')

-- ignore prepending comment to new line
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

-- lowered to get whichkey-plugin to appear faster
vim.opt.timeoutlen = 200

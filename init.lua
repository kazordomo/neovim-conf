require('plugins.init')
require('mappings')

local o_s = vim.o

local function opt(o, v, scopes)
  scopes = scopes or {o_s}
  for _, s in ipairs(scopes) do s[o] = v end
end

-- colorscheme
opt('background', 'dark')
vim.cmd [[colorscheme gruvbox]]

opt('relativenumber', true, window)
opt('number', true, window)
opt('nuw', 5, window)
opt('textwidth', 100, buffer)
opt('showmatch', true)
opt('ignorecase', true)
opt('tabstop', 4, buffer)
opt('softtabstop', 4, buffer)
opt('expandtab', true, buffer)
opt('shiftwidth', 4, buffer)

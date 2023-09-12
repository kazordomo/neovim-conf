local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp", -- Autocompletion plugin
  "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
  "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
  "L3MON4D3/LuaSnip", -- Snippets plugin
  "Mofiqul/dracula.nvim",
  "windwp/nvim-autopairs",
  "b3nj5m1n/kommentary",
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  },
  "preservim/nerdtree",
  "kdheepak/lazygit.nvim",
  "airblade/vim-gitgutter",
  "sychen52/smart-term-esc.nvim", -- remap instead when less lazy
  "folke/which-key.nvim",
  "mfussenegger/nvim-dap",
})

require ("plugins.lsp")
require ("plugins.tree-sitter")
require ("plugins.autocomplete")
require ("plugins.smart-term")
require ("plugins.autopairs")
require ("plugins.dap")
require ("plugins.which-key")

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "rust", "c_sharp", "lua", "javascript", "json", "typescript", "go", "html" },

  sync_install = false,

  highlight = {
    enable = true,
  }
}


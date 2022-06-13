require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c_sharp", "lua", "javascript", "json", "typescript" },

  sync_install = false,

  highlight = {
    enable = true,
  }
}


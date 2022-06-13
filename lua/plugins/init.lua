require ('plugins.lsp')
require ('plugins.tree-sitter')

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use('nvim-lua/plenary.nvim')

    use 'neovim/nvim-lspconfig'

    use 'morhetz/gruvbox'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'jiangmiao/auto-pairs'
end)


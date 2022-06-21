require ('plugins.lsp')
require ('plugins.tree-sitter')
require ('plugins.autocomplete')
require ('plugins.smart-term')

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use('nvim-lua/plenary.nvim')

    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use 'morhetz/gruvbox'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'jiangmiao/auto-pairs'

    use 'preservim/nerdtree'

    use 'airblade/vim-gitgutter'

    use 'sychen52/smart-term-esc.nvim' -- remap instead when less lazy
end)

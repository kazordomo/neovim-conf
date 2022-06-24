require ('plugins.lsp')
require ('plugins.tree-sitter')
require ('plugins.autocomplete')
require ('plugins.smart-term')
require ('plugins.autopairs')

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use('nvim-lua/plenary.nvim')

    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use 'morhetz/gruvbox'

    use 'windwp/nvim-autopairs'

	use 'b3nj5m1n/kommentary'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'preservim/nerdtree'

	use 'kdheepak/lazygit.nvim'

    use 'airblade/vim-gitgutter'

    use 'sychen52/smart-term-esc.nvim' -- remap instead when less lazy
end)

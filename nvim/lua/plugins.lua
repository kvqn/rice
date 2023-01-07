-- This module contains plugins


return require('packer').startup(function(use)

    -- Packer
    use 'wbthomason/packer.nvim'

    ---------------------------------LSP ZERO---------------------------------

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }

    --------------------------------------------------------------------------

    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-commentary'
    use 'ntpeters/vim-better-whitespace'
    use 'farmergreg/vim-lastplace'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use 'NvChad/nvim-colorizer.lua'

    use 'zbirenbaum/copilot.lua'



    -- Color Schemes
    -- Set colorscheme in .config/nvim/after/init.lua
    use 'morhetz/gruvbox'

end)

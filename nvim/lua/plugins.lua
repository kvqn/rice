-- This module contains plugins
-- vim: set cc=80:


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
            -- {'rafamadriz/friendly-snippets'},
        }
    }

    --------------------------------------------------------------------------

    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'sharkdp/fd'

    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'windwp/nvim-autopairs'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-commentary'
    use 'ntpeters/vim-better-whitespace'
    use 'farmergreg/vim-lastplace'
    use 'airblade/vim-gitgutter'

    use 'NvChad/nvim-colorizer.lua'
    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup(require("copilot_options"))
        end,
    }
    -- use 'norcalli/snippets.nvim'
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    use 'ThePrimeagen/vim-be-good'
    use 'tmhedberg/SimpylFold'
    -- use 'Konfekt/FastFold'

    use 'sbdchd/neoformat'

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    use 'ianding1/leetcode.vim'

    use 'windwp/nvim-ts-autotag'

    use 'rhysd/vim-grammarous'

    use 'lewis6991/impatient.nvim'

    ------------------------------Color Schemes------------------------------
    -- Set colorscheme in after/plugins/colors.lua

    -- Favorites
    use 'morhetz/gruvbox'
    use 'tomasr/molokai'

    -- I think these are cool but I rarely use them
    use 'bluz71/vim-moonfly-colors'
    use 'rose-pine/neovim'
    use 'rebelot/kanagawa.nvim'
    use 'NLKNguyen/papercolor-theme'

end)

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

    -------------------------------Core Plugins-------------------------------

    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'sharkdp/fd'

    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup(require("copilot_options"))
        end,
    }
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    -------These plugins are for NERDtree-------
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'
    -- use 'scrooloose/nerdtree-project-plugin'
    --------------------------------------------

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
    use 'NvChad/nvim-colorizer.lua'
    use 'lewis6991/impatient.nvim'
    use 'sbdchd/neoformat'
    use 'tmhedberg/SimpylFold'
    use 'windwp/nvim-ts-autotag'
    use 'mustache/vim-mustache-handlebars'

    use {
        'goolord/alpha-nvim',
        config = function()
            require('vagabond-greeter')()
        end
    }

    use 'NLKNguyen/pipe.vim'
    use 'NLKNguyen/pipe-mysql.vim'

    use 'ggandor/leap.nvim'

    use 'fladson/vim-kitty'


    -- Rarely used plugins
    use 'airblade/vim-gitgutter'
    use 'ThePrimeagen/vim-be-good'
    use 'rhysd/vim-grammarous'
    use 'ianding1/leetcode.vim'
    -- use 'norcalli/snippets.nvim'


    ------------------------------Color Schemes------------------------------
    -- Set colorscheme in lua/colors/init.lua

    -- Favorites
    use 'morhetz/gruvbox'
    use 'tomasr/molokai'
    use 'nanotech/jellybeans.vim'

    -- I think these are cool but I rarely use them
    use 'bluz71/vim-moonfly-colors'
    use 'rose-pine/neovim'
    use 'rebelot/kanagawa.nvim'
    use 'NLKNguyen/papercolor-theme'

end)

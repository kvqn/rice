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

    -------These plugins are for NERDtree-------
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'
    -- use 'scrooloose/nerdtree-project-plugin'
    --------------------------------------------

    use {
        'goolord/alpha-nvim',
        config = function() require('vagabond-greeter')() end
    }

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
        config = function() require('neogen').setup {} end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    use 'farmergreg/vim-lastplace'
    use 'fladson/vim-kitty'
    use 'ggandor/leap.nvim'
    use 'lewis6991/impatient.nvim'
    use 'mbbill/undotree'
    use 'mustache/vim-mustache-handlebars'
    use 'NLKNguyen/pipe-mysql.vim'
    use 'NLKNguyen/pipe.vim'
    use 'ntpeters/vim-better-whitespace'
    use 'NvChad/nvim-colorizer.lua'
    use 'nvim-lua/plenary.nvim'
    use 'othree/html5.vim'
    use 'sbdchd/neoformat'
    use 'ThePrimeagen/harpoon'
    use 'tmhedberg/SimpylFold'
    use 'Konfekt/FastFold'
    use 'tpope/vim-commentary'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'turbio/bracey.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'


    -- Rarely used plugins
    use 'airblade/vim-gitgutter'
    use 'ianding1/leetcode.vim'
    use 'rhysd/vim-grammarous'
    use 'ThePrimeagen/vim-be-good'
    use 'tpope/vim-fugitive'
    -- use 'norcalli/snippets.nvim'


    ------------------------------Color Schemes------------------------------
    -- Set colorscheme in lua/colors/init.lua

    -- Favorites
    use 'morhetz/gruvbox'
    use 'nanotech/jellybeans.vim'
    use 'tomasr/molokai'

    -- I think these are cool but I rarely use them
    use 'bluz71/vim-moonfly-colors'
    use 'jaredgorski/SpaceCamp'
    use 'NLKNguyen/papercolor-theme'
    use 'rebelot/kanagawa.nvim'
    use 'rose-pine/neovim'
    use 'sjl/badwolf'
    -- use 'ayu-theme/ayu-vim'
    -- use 'srcery-colors/srcery-vim'
    -- use 'w0ng/vim-hybrid'


end)

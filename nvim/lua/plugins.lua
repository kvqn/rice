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

    ---------------- Why is this not in the base install? ----------------

    use 'tamago324/nlsp-settings.nvim'
    use 'wellle/context.vim'

    use 'tpope/vim-commentary'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'

    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "danymat/neogen",
        config = function() require('neogen').setup {} end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    use 'farmergreg/vim-lastplace'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'windwp/nvim-autopairs'
    use 'ntpeters/vim-better-whitespace'

    use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
    use 'nvim-lua/plenary.nvim'

    ----------------------------------------------------------------------

    ---------------------------- Much Love <3 ----------------------------

    -- Code Formatting Sweetness
    use 'mhartington/formatter.nvim'

    -- Transparent background is to die for
    use 'tribela/vim-transparent'

    -- Live Markdown Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    -- Saves me keystrokes
    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup(require("copilot_options"))
        end,
    }

    -- Leap around
    use 'ggandor/leap.nvim'

    -- Live HTML Preview
    use 'turbio/bracey.vim'

    -- Bookmarks
    use 'ThePrimeagen/harpoon'

    ----------------------------------------------------------------------

    -------------------------- Useful Sometimes --------------------------

    use 'folke/trouble.nvim' -- Display my errors

    use {
        'goolord/alpha-nvim',
        config = function() require('vagabond-greeter')() end
    }

    use 'ianding1/leetcode.vim'
    use 'dstein64/vim-startuptime'
    use 'mbbill/undotree'
    use 'airblade/vim-gitgutter'

    -- Rarely used
    use 'tpope/vim-fugitive'

    -------These plugins are for NERDtree-------
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'
    --------------------------------------------

    ----------------------------------------------------------------------

    ------------------------- Specific Use Cases -------------------------

    -- kitty.conf
    use 'fladson/vim-kitty'

    -- SQL
    use 'NLKNguyen/pipe-mysql.vim'
    use 'NLKNguyen/pipe.vim'

    -- HTMl
    use 'othree/html5.vim'
    use 'mattn/emmet-vim'
    use 'mustache/vim-mustache-handlebars'
    use 'windwp/nvim-ts-autotag'

    -- Python
    use 'tweekmonster/django-plus.vim'

    -- LaTeX
    use 'lervag/vimtex'

    ------------------------------Color Schemes----------------------------
    -- Set colorscheme in lua/colors/init.lua

    -- Favorites
    use 'projekt0n/github-nvim-theme'
    use 'morhetz/gruvbox'
    use 'nanotech/jellybeans.vim'
    use 'tomasr/molokai'

    -- I think these are cool but I rarely use them
    use 'bluz71/vim-moonfly-colors'
    use 'jaredgorski/SpaceCamp'
    use 'NLKNguyen/papercolor-theme'
    use 'rebelot/kanagawa.nvim'
    use 'sjl/badwolf'
    -- use 'rose-pine/neovim'
    -- use 'ayu-theme/ayu-vim'
    -- use 'srcery-colors/srcery-vim'
    -- use 'w0ng/vim-hybrid'
    -----------------------------------------------------------------------


end)

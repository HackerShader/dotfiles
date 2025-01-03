return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    --Template
    use {
        'otavioschwanck/new-file-template.nvim', 
    }
    --comment.nvim
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    --autosave
    use "Pocco81/auto-save.nvim"
    --notify
    use 'rcarriga/nvim-notify'

    --startup
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    --Auto close 
    use 'm4xshen/autoclose.nvim'

    --lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function() pcall(vim.cmd, 'MasonUpdate') end
            },
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
            {'rafamadriz/friendly-snippets'},
        }
    }


    --telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --colorscheme
    use({
        'projekt0n/github-nvim-theme',
    })

    --syntax highlighting
    use 'nvim-treesitter/nvim-treesitter'

    --lspconfig
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    --discordrpc
    use 'andweeb/presence.nvim'

    --lualine
    use {
        'nvim-lualine/lualine.nvim',
        'archibate/lualine-time',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    --nvim-tree 
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

end)

vim.cmd [[packadd packer.nvim]]
vim.cmd [[set number]]
vim.cmd [[set relativenumber]]
vim.cmd [[set ai]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set expandtab]]
vim.cmd [[set ls=2]]
vim.cmd [[set autoindent]]
vim.cmd [[set noshowmode]]
vim.cmd [[highlight LineNr term=bold cterm=NONE ctermfg=Blue ctermbg=NONE gui=NONE guifg=DarkGrey guibg=DarkGrey]]
vim.cmd [[set clipboard+=unnamedplus]]

require('plugins/plugins')
require('config.comment')
require('config.mason')
require('config.cmp')
require('config.lualine')
require('config.nvim-tree')
require('config.colorscheme')
require('config.nvim-treesitter')
require('config.telescope')
require('config.lsp')
require('config.template')
require('config.notify')
require('config.keymap')
require('config.cmp')
require('config.autosave')
require("autoclose").setup()
require('config.presence')

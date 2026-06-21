-- source the vim style config
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require("config.lazy")

-- PLUGINS
require('config.user-nvim-transparent')
require('config.nvim-web-devicons-config')
require('config.nvim-tree-config')
require('config.nvim-cmp')
require('config.nvim-treesitter-config')
require('config.lsp')
require('Comment').setup()
require('config.gruvbox')
require('lualine').setup()
require('tabline').setup({})
require('config.aerial-config')
require('indent_blankline').setup()
require('config.nvim-dap-config')
require('which-key').setup()
require('config.nvim-bqf-config')

--:checkhealth show existing tab with 4 spaces width
vim.opt.tabstop = 4

--On pressing tab, insert 4 spaces
vim.opt.expandtab = true

--Helps when backspacing for tabbed regions, backspace 4 spaces with one tab key
vim.opt.softtabstop=4 --when indenting with '>', use 4 spaces width 
vim.opt.shiftwidth=4 

--Copies the indent from the current line when starting the new line
vim.opt.autoindent = true

--Smart autoindenting for functions 
-- vim.opt.smartindent = true

--hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus" --set clipboard to be shared with the system clipboard

require("core.keymaps")

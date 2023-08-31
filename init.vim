":checkhealth show existing tab with 4 spaces width
set tabstop=4
" On pressing tab, insert 4 spaces
set expandtab
" Helps when backspacing for tabbed regions, backspace 4 spaces with one tab key
set softtabstop=4 " when indenting with '>', use 4 spaces width 
set shiftwidth=4 
" Copies the indent from the current line when starting the new line
set autoindent
" Smart autoindenting for functions set smartindent

" hybrid line numbers
set number relativenumber

set clipboard+=unnamedplus " set clipboard to be shared with the system clipboard


call plug#begin()
Plug 'neoclide/coc.nvim', {'commit' : '1038082aaaab22fcb552d60e0e40589ec49b2c11'} " coc auto completion
Plug 'jiangmiao/auto-pairs', {'commit' : '39f06b873a8449af8ff6a3eee716d3da14d63a76'}  " auto closing paris [] ()
Plug 'gruvbox-community/gruvbox' , {'commit' : '2b5b1f777f0583ffb39086d6c16f39e6e37459c0'} " gruvbox
Plug 'nvim-tree/nvim-web-devicons', {'commit' : 'cfc8824cc1db316a276b36517f093baccb8e799a'} " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua', {'commit' : '00741206c2df9c4b538055def19b99790f0c95c8'}
Plug 'nvim-lualine/lualine.nvim', {'commit' : '45e27ca739c7be6c49e5496d14fcf45a303c3a63'} " newer status line
Plug 'xiyaowong/nvim-transparent', {'commit' : '4cf97fc0b1c4a88cf246b2f6facb735a536a558e'}
Plug 'folke/which-key.nvim', {'commit' : '7ccf476ebe0445a741b64e36c78a682c1c6118b7'} " shows the current key bindings 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'commit' : 'f0f115e926df05d2f1363eb9aa93714056f29827'} " synthax highlighting
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' } " bufferline
Plug 'crispgm/nvim-tabline', {'commit' : '7044c5b73678c7b0161f4c37acd0f555cc3ce908'} " more basic bufferline / tabline
Plug 'stevearc/aerial.nvim', {'commit' : 'dc17cfd401689337124c75270677fd3b7639cf23'} " symbol outline
Plug 'numToStr/Comment.nvim', {'commit' : '0236521ea582747b58869cb72f70ccfa967d2e89'} " commenting plugin
Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile', 'commit' : '022c79518ab05a628272857926f33e8f65eefae0'} " install python support for coc.nvim
Plug 'mfussenegger/nvim-dap', {'commit' : '31e1ece773e10448dcb616d5144290946a6264b7'} " DAP Debug Adapter Protocol
Plug 'mfussenegger/nvim-dap-python', {'commit' : '37b4cba02e337a95cb62ad1609b3d1dccb2e5d42'} " Pyton extension of DAP
Plug 'rcarriga/nvim-dap-ui', {'commit' : '85b16ac2309d85c88577cd8ee1733ce52be8227e'} "better UI for DAP
call plug#end()

set termguicolors
colo gruvbox

" let g:airline_theme='gruvbox'

lua require('config.user-nvim-transparent')
"lua require('config.netrw-mapping')
lua require('config.nvim-web-devicons-config')
lua require('config.nvim-tree-config')
lua require('config.coc-nvim-config')
lua require('config.nvim-treesitter-config')
lua require('lualine').setup()
" lua require('config.bufferline-config')
lua require('tabline').setup({})
lua require('config.aerial-config')
lua require('Comment').setup()
lua require('config.nvim-dap-config')
lua require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

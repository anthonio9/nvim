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


call plug#begin()
Plug 'neoclide/coc.nvim' " coc auto completion
Plug 'jiangmiao/auto-pairs' " auto closing paris [] ()
Plug 'gruvbox-community/gruvbox' " gruvbox
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim' " newer status line
Plug 'xiyaowong/nvim-transparent'
Plug 'folke/which-key.nvim' " shows the current key bindings 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " synthax highlighting
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' } " bufferline
Plug 'crispgm/nvim-tabline' " more basic bufferline / tabline
Plug 'stevearc/aerial.nvim' " symbol outline
Plug 'numToStr/Comment.nvim' " commenting plugin
Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'} " install python support for coc.nvim
Plug 'mfussenegger/nvim-dap' " DAP Debug Adapter Protocol
Plug 'mfussenegger/nvim-dap-python' " Pyton extension of DAP
Plug 'rcarriga/nvim-dap-ui' "better UI for DAP
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

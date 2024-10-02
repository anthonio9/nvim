--Plug 'jiangmiao/auto-pairs', {'commit' : '39f06b873a8449af8ff6a3eee716d3da14d63a76'}  " auto closing paris [] ()

return 
{
    {
        'jiangmiao/auto-pairs',
        commit = '39f06b873a8449af8ff6a3eee716d3da14d63a76'
    },
    -- {
    --     -- gruvbox
    --     'gruvbox-community/gruvbox',
    --     commit = '2b5b1f777f0583ffb39086d6c16f39e6e37459c0'
    -- },
    {
        -- color scheme
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
    },
    {
        -- optional, for file icons
        'nvim-tree/nvim-web-devicons',
        commit = 'cfc8824cc1db316a276b36517f093baccb8e799a'
    },
    {
        -- file tree sidebar
        'nvim-tree/nvim-tree.lua',
        commit = '00741206c2df9c4b538055def19b99790f0c95c8'
    },
    {
        -- make the editor transparent
        'xiyaowong/nvim-transparent', 
        commit = '4cf97fc0b1c4a88cf246b2f6facb735a536a558e'
    },
    {
        -- synthax highlighting
        'nvim-treesitter/nvim-treesitter', -- {'do': ':TSUpdate', }
        commit = 'f0f115e926df05d2f1363eb9aa93714056f29827'
    },
    {
        -- commenting plugin
        'numToStr/Comment.nvim', 
        commit = '0236521ea582747b58869cb72f70ccfa967d2e89'
    },
    { 
        -- newer status line
        'nvim-lualine/lualine.nvim', 
        commit = '544dd1583f9bb27b393f598475c89809c4d5e86b',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        -- shows the current key bindings 
        'folke/which-key.nvim',
        commit = '7ccf476ebe0445a741b64e36c78a682c1c6118b7'
    },
    {
        -- more basic bufferline / tabline
        'crispgm/nvim-tabline', 
        commit = '7044c5b73678c7b0161f4c37acd0f555cc3ce908',
    },
    {
        'lukas-reineke/indent-blankline.nvim', 
        tag = 'v2.20.8'
    },
    {
        -- code / symbol outline window on the right side -> enable with Ctrl + A
        'stevearc/aerial.nvim', 
        commit = 'dc17cfd401689337124c75270677fd3b7639cf23'
    },
    {
        -- DAP Debug Adapter Protocol
        'mfussenegger/nvim-dap', 
        tag = '0.8.0'
    },
    {
        -- better UI for DAP
        'rcarriga/nvim-dap-ui', 
        commit = '85b16ac2309d85c88577cd8ee1733ce52be8227e' 
    },
    {
        'kevinhwang91/nvim-bqf',
        commit = '1b24dc6050c34e8cd377b6b4cd6abe40509e0187'
    },
}

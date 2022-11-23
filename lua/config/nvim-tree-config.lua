-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_set_keymap('n', '<C-N>', ":NvimTreeToggle<CR>", { silent = true })

-- local M = {}
-- 
-- function M.setup()
--   require("nvim-tree").setup {
--     disable_netrw = true,
--     hijack_netrw = true,
--     view = {
--       number = true,
--       relativenumber = true,
--     },
--     filters = {
--       custom = { ".git" },
--     },
--   }
-- end
-- 
-- return M

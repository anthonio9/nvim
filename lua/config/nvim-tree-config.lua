-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- follow the current directory
vim.g.nvim_tree_respect_buf_cwd = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",

  view = {
    adaptive_size = true,
  },

  renderer = {
    group_empty = true,
  },

  filters = {
    dotfiles = true,
  },

  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
})

vim.api.nvim_set_keymap('n', '<C-N>', ":NvimTreeToggle<CR>", { silent = true })

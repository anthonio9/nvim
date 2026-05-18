vim.lsp.config("pylsp", {
  on_attach = custom_attach,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        -- formatter options
        black = { enabled = true },
        autopep8 = { enabled = false },
        yapf = { enabled = false },

        -- linter options
        pylint = { enabled = true, executable = "pylint" },
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },

        -- -- type checker
        -- pylsp_mypy = { enabled = true },
        -- -- auto-completion options
        -- jedi_completion = { fuzzy = true },
        -- -- import sorting
        -- pyls_isort = { enabled = true },
      },
    },
  },
  flags = {
    debounce_text_changes = 200,
  },
})

vim.lsp.config('autotools_ls', {
  filetypes = { 'config', 'automake', 'make', 'm4' },
})

vim.lsp.config('clangd', {
  init_options = {
    fallbackFlags = { '--std=c++14' },
  },
})

vim.lsp.enable({ 'pylsp', 'autotools_ls', 'clangd' })

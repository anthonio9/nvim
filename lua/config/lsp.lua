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
      },
    },
  },

  flags = {
    debounce_text_changes = 200,
  },
})

vim.lsp.enable("pylsp")

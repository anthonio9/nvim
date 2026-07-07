local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function custom_attach(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
end

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
        pycodestyle = { enabled = true, ignore = {'W391'}, maxLineLength = 100 },

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
  on_attach = custom_attach,
  capabilities = capabilities,
  filetypes = { 'config', 'automake', 'make', 'm4' },
})

vim.lsp.config('clangd', {
  on_attach = custom_attach,
  capabilities = capabilities,
  init_options = {
    fallbackFlags = { '--std=c++14' },
  },
})

vim.lsp.enable({ 'pylsp', 'autotools_ls', 'clangd' })

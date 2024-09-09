require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

require('lspconfig').pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lspconfig = require("lspconfig")
-- lspconfig["pylsp"].setup {
-- on_attach = custom_attach,
-- settings = {
--     pylsp = {
--     plugins = {
--         -- -- formatter options
--         -- black = { enabled = true },
--         -- autopep8 = { enabled = false },
--         -- yapf = { enabled = false },
--         -- -- linter options
--         -- pylint = { enabled = true, executable = "pylint" },
--         -- pyflakes = { enabled = false },
--         pycodestyle = { enabled = false },
--         -- -- type checker
--         -- pylsp_mypy = { enabled = true },
--         -- -- auto-completion options
--         -- jedi_completion = { fuzzy = true },
--         -- -- import sorting
--         -- pyls_isort = { enabled = true },
--     },
--     },
-- },
-- flags = {
--     debounce_text_changes = 200,
-- },
-- capabilities = capabilities,
-- }
--

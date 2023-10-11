
local lsp = require("lsp-zero")

-- lsp.preset("recommended")

-- lsp.nvim_workspace()

-- Commenting this line because it gives me pain.
-- I don't use pylsp anymore but I still want to keep my configuration if I ever wind up using it again.
-- Keeping this line uncommented gives me a warning every time I open a python file.
-- I don't know how to fix that while still keeping the configuration.
-- lsp.configure('pylsp', require 'lsp.pylsp')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

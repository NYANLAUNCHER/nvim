
-- source: https://github.com/hrsh7th/nvim-cmp

-- Setup nvim-cmp.
local cmp = require'cmp'
cmp.setup{
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm({
      select = true
    }),
  },
  sources = { --source: https://github.com/topics/nvim-cmp
    { name = 'buffer' },
    { name = 'path' },
    { name = 'spell' },
    --{ name = 'rg' }, --:h cmp-rg
    --{ name = 'treesitter' },
    --{ name = 'cmp_tabnine' }, --figure out latter tzachar/cmp-tabnine
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
  },
  completion = {completeopt = 'menu,menuone,noinsert'}
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Setup lspconfig.
--require'lspconfig'.ccls.setup {
--  capabilities = capabilities
--}

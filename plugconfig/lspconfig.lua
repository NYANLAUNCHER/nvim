
-- source: https://github.com/neovim/nvim-lspconfig
-- ls source: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md

--vim.cmd([[
--  let s:format-cmd = ""
--  au FileType cpp let s:format-cmd = ""
--  fun! FormatCode()
--    if(s:format-cmd = "")
--      :lua vim.lsp.buf.formatting()
--    endif
--  endfun
--]])

local nvim_lsp = require('lspconfig')
--local protocol = require('vim.lsp.protocol')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- See :help "vim.lsp.*" for documentation on any of the below functions
  local opts = { noremap = true, silent = true }
  buf_set_keymap('n', 'gD',         '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd',         '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'H',          '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi',         '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

  --buf_set_keymap('n', '<C-k>',      '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<C-i>',      '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

  buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<leader>d',  '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>R',  '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr',         '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<leader>e',  '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '<C-n>',      '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<C-p>',      '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<leader>q',  '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  -- Auto Complete
end

-- Ls setup
-- Source: "https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md"

local util = require'lspconfig/util'

require'lspconfig'.ccls.setup{
  cmd = { "ccls" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = util.root_pattern("compile_commands.json", ".ccls", "compile_flags.txt", ".git"),
}

--require'lspconfig'.clangd.setup{}

require'lspconfig'.rls.setup{
  settings = {
    rust = {
      unstable_features = true,
      build_on_save = false,
      all_features = true,
    },
  },
}

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require'lspconfig'.verible.setup{}

require'lspconfig'.vimls.setup{--[[Code Goes Here]]}

require'lspconfig'.powershell_es.setup{
  bundle_path = '~/LanguageConfig/Powershell/PowerShellEditorServices',
}

require'lspconfig'.csharp_ls.setup{--[[Code Goes Here]]}

--require'lspconfig'.cmake.setup{--[[Code Goes Here]]}

require'lspconfig'.pyright.setup{--[[Code Goes Here]]}

require'lspconfig'.tsserver.setup{--[[Code Goes Here]]}

require'lspconfig'.bashls.setup{}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'ccls', 'rls', 'vimls', 'csharp_ls', 'tsserver', 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

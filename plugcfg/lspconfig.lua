
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

-- {{{ Cpp setup
nvim_lsp.ccls.setup{
  cmd = { "ccls" },
  single_file_support = true,
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = util.root_pattern(".ccls", "compile_commands.json", "compile_flags.txt", ".git", "src", "include"),
  init_options = {-- source = "https://github.com/MaskRay/ccls/wiki/Customization#initialization-options"
    compilationDatabaseDirectory = "build",
    cache = {
      directory = "~/.cache/ccls"
    }
  }
}-- }}

-- {{{ Rust setup
nvim_lsp.rust_analyzer.setup{
  on_attach=on_attach,
  root_dir = util.root_pattern("Cargo.toml", "rust-project.json", ".git", "src", "include"),
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "self",
      },
      cargo = {
        loadOutDirsFromCheck = true
      },
      procMacro = {
        enable = true
      },
    },
  },
}-- }}}

-- {{{ Lua setup
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
nvim_lsp.sumneko_lua.setup {
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
        globals = {
          'vim',
        },
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
}-- }}}

nvim_lsp.vimls.setup{}

nvim_lsp.gdscript.setup{}

-- {{{ Html setup
-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.html.setup {
  capabilities = capabilities,
}-- }}}

nvim_lsp.gopls.setup{}

nvim_lsp.verible.setup{}

nvim_lsp.csharp_ls.setup{}

--nvim_lsp.cmake.setup{}

nvim_lsp.pyright.setup{}

vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]])
nvim_lsp.eslint.setup{}

nvim_lsp.tsserver.setup{}

nvim_lsp.bashls.setup{}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'ccls', 'rls', 'vimls', 'sumneko_lua', 'gopls', 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

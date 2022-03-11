
so ~/AppData/Local/nvim/plugin/Plugins.vim

setlocal ts=4 sts=4 sw=4

augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'jdtls_setup'.setup()
augroup end

lua << EOF
local config = {
-- The command that starts the language server
cmd = {
  'C:/Program Files (x86)/Common Files/Oracle/Java/javapath/java.exe',
  '-Dosgi.bundles.defaultStartLevel=4',
  -- ADD REMAINING OPTIONS FROM https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line !
},

-- This is the default if not provided, you can remove it. Or adjust as needed.
-- One dedicated LSP server & client will be started per unique root_dir
root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
}
require('jdtls').start_or_attach(config)
EOF

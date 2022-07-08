local jdtls = require('jdtls')

vim.cmd([[
setl ts=4 sts=4 sw=4

augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'jdtls_setup'.setup()
augroup end
]])

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '~/.cache/jdtls/' .. project_name

-- see: "https://github.com/mfussenegger/nvim-jdtls#configuration"
local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/usr/share/java/jdtls/config_linux',
    '-data', workspace_dir,
  },

  root_dir = require'jdtls.setup'.find_root({'.git', 'mvnw', 'gradlew'}),

  -- see: "https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request"
  settings = {
    java = {
    }
  },

  -- see: "https://github.com/mfussenegger/nvim-jdtls#java-debug-installation"
  init_options = {
    bundles = {}
  },
}

jdtls.start_or_attach(config)

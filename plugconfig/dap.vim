
" DevOnDuty-Config:
" https://github.com/David-Kunz/vim/blob/2c75764d5df2ac5e3ad049bee9d1adeacf6fedd3/init.vim#L305
" https://youtu.be/ga3Cas7vNCk
" https://youtu.be/SIYt1dopfTc

" Debugger Mappings
nnoremap <silent> <leader>ds <Cmd>lua require'dap'.close()<CR>
nnoremap <silent> <C-d>r <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <S-k> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <S-l> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <S-j> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl <Cmd>lua require'dap'.run_last()<CR>
"   dap + telescope
nnoremap <leader>df <Cmd>Telescope dap frames<CR>
nnoremap <leader>dc <Cmd>Telescope dap commands<CR>
nnoremap <leader>db <Cmd>Telescope dap list_breakpoints<CR>

"  :h dap.txt

" Dap config
lua << EOF
require('dap')
vim.fn.sign_define('DapBreakpoint', {text='B', texthl='on', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='S', texthl='', linehl='', numhl=''})
EOF

" CPP config
lua << EOF
env = function() local variables = {}
  for k, v in pairs(vim.fn.environ()) do
      table.insert(variables, string.format("%s=%s", k, v))
  end
  return variables
end

local dap = require('dap')
dap.adapters.lldb = { --set lldb adapter
  type = 'executable';
  command = '/Program Files/LLVM/bin/lldb-vscode'; --os.getenv('HOME') ..
  name = "lldb"
  --args = { '-m', 'lldb.adapter' };
}

local dap = require('dap')
dap.configurations.cpp = { --how to launch lldb adapter
  {
     name = "Launch",
     type = "lldb",
     request = "launch",
     program = function()
       --                                          vim.loop.cwd()
       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\', 'file')
       -- figure out how to find executables in CWD if multiple, give options
       -- also recursively search starting with CWD/bin
     end,
     cwd = '${workspaceFolder}',
     stopOnEntry = false,
     args = {},
     runInTerminal = false,
  },
}
EOF




-- DevOnDuty-Config:
-- https://github.com/David-Kunz/vim/blob/2c75764d5df2ac5e3ad049bee9d1adeacf6fedd3/init.vim#L305
-- https://youtu.be/ga3Cas7vNCk
-- https://youtu.be/SIYt1dopfTc

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Debugger Mappings
map("n", "<leader>ds", "<Cmd>lua require'dap'.close()<CR>", {silent = true})
map("n", "<C-d>r", "<Cmd>lua require'dap'.continue()<CR>", {silent = true})
map("n", "<S-k>", "<Cmd>lua require'dap'.step_out()<CR>", {silent = true})
map("n", "<S-l>", "<Cmd>lua require'dap'.step_into()<CR>", {silent = true})
map("n", "<S-j>", "<Cmd>lua require'dap'.step_over()<CR>", {silent = true})
map("n", "<leader>b", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true})
map("n", "<leader>B", "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {silent = true})
map("n", "<leader>lp", "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", {silent = true})
map("n", "<leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>", {silent = true})
map("n", "<leader>dl", "<Cmd>lua require'dap'.run_last()<CR>", {silent = true})

--   dap + telescope
map("n", "<leader>df", "<Cmd>Telescope dap frames<CR>")
map("n", "<leader>df", "<Cmd>Telescope dap commands<CR>")
map("n", "<leader>df", "<Cmd>Telescope dap list_breakpoints<CR>")

--  :h dap.txt

-- Dap config
require('dap')
vim.fn.sign_define('DapBreakpoint', {text='B', texthl='on', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='S', texthl='', linehl='', numhl=''})

-- CPP config
env = function() local variables = {}
  for k, v in pairs(vim.fn.environ()) do
      table.insert(variables, string.format("%s=%s", k, v))
  end
  return variables
end

local dap = require('dap')
dap.adapters.lldb = { --set lldb adapter
  type = 'executable';
  command = '';
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
       -- figure out how to find executables recursively in <projRoot> if multiple, give options
       -- start searching in <projRoot>/bin
     end,
     cwd = '${workspaceFolder}',
     stopOnEntry = false,
     args = {},
     runInTerminal = false,
  },
}


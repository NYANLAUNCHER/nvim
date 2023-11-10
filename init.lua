-- Stand-alone neovim config file with all my defaults
--- designed to be copied to the global configs

--TODO:
-- fix sys clipboard
-- add readline keybindings for insert mode
-- fix toggleWindowMaximized
-- remove highlights after search
-- add better pair matching functionality
-- add better support for lists

-- Language Configs: (in order)
--- Lua, Cpp, C, Rust, D


-- Settings: (:help lua-guide-options)
vim.cmd('filetype plugin indent on')
vim.opt.syntax='on'
vim.opt.shortmess='a'
vim.opt.errorbells=true
vim.opt.timeoutlen=800
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.mouse=''

vim.opt.virtualedit:append('block')
vim.opt.scrolloff=8
vim.opt.sidescrolloff=6
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.wrap=false
vim.opt.signcolumn='yes'
vim.opt.foldcolumn='auto'
vim.opt.foldmethod='manual'
vim.opt.colorcolumn='100'
vim.opt.cmdheight=2

vim.opt.magic=true
vim.opt.smartcase=true
vim.opt.ignorecase=true
vim.opt.hlsearch=true
vim.opt.incsearch=true
vim.opt.showmatch=true

vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.smarttab=true
vim.opt.autoindent=true
vim.opt.shiftround=true

vim.opt.autochdir=true
vim.opt.exrc=true
vim.opt.hidden=true
vim.opt.autoread=true
vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.writebackup=false
vim.opt.undodir=vim.fn.stdpath('data') .. '/undo'
vim.opt.undofile=true


-- Keymaps:
-- set the leader key
vim.g.leader=' '

-- ; to enter cmd mode
vim.keymap.set({'n', 'v'}, ';', ':')

-- ESC terminal mode
vim.keymap.set('t', '<C-[>', '<C-\\><C-n>')

-- Scroll Buffer
vim.keymap.set('n', 'J', '<C-e>')
vim.keymap.set('n', 'K', '<C-y>')

-- Change Windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- <C-w>m toggle window maximized
vim.keymap.set('n', '<C-w>m', function() toggleWindowMaximized() end, {silent = true})

-- Append Line
vim.keymap.set('n', ',o', 'o<ESC>')
vim.keymap.set('n', ',O', 'O<ESC>')

-- Use Sys Cliboard
vim.g.clipboard = 'unamedplus'
vim.keymap.set('n', '<leader>Y', '"+yg_')
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P')


-- Commands
vim.cmd([[
com! Q q!
com! Qa qa!
com! W w!
com! Reload source $MYVIMRC
]])


-- Functions & Augroups:
-- augroup saveOnClose

-- augroup trimWhitespace

-- pingCursor

-- toggleWindowMaximized
function toggleWindowMaximized()
    vim.cmd(':echo "window maximized"')
end

-- augroup saveTODO = save a list of all the "TODO:" strings that are written in comments
---  works in conjungtion with ~/src/local/scripts/TODO.sh

-- augroup saveManualFolds
-- toggleFolds = toggle all the folds in the buffer


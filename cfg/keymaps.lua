require('keymap')

-- Semicolon for command mode
map({"n", "v"}, ";", ":")

-- <C-;> to <ESC>
map({"i", "v", "c", "t"}, "<C-;>", "<C-[>")

-- move in insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- Surround
map("n", "yS", "ys$")

-- Scroll Buffer
map("n", "<S-j>", "<C-e>")
map("n", "<S-k>", "<C-y>")

-- Change Windows
map("n", "<C-h>", "<C-w>h", {silent = true})
map("n", "<C-j>", "<C-w>j", {silent = true})
map("n", "<C-k>", "<C-w>k", {silent = true})
map("n", "<C-l>", "<C-w>l", {silent = true})

-- Y/C Yank/Change to end of line
map("n", "Y", "y$")
map("n", "C", "c$")

-- add line in n mode
map("n", ",o", "o<ESC>")
map("n", ",O", "O<ESC>")

-- Copy to sys_clipboard
map("v", "<leader>y", "\"+yg_")
map("n", "<leader>Y", "\"+0Yg_")
map("n", "<leader>y", "\"+yg_")

-- Paste from sys_clipboard
map("n", "<leader>p", "\"+p")
map("v", "<leader>p", "\"+p")
map("n", "<leader>P", "\"+P")
map("n", "<leader>P", "\"+P")

-- Compile & Run cmds
--nnoremap <C-b>  <Cmd>call Compile() <Bar> call Run()<Cr> "build and run
--nnoremap <C-b>c <Cmd>call Compile<Cr> "compile
--nnoremap <C-b>r <Cmd>call Run<Cr> "run

-- Grep
-- source: https://learnvimscriptthehardway.stevelosh.com/chapters/32.html
--nnoremap <leader>g
--nnoremap <leader>giw :grep -R <cword> .<cr>
--nnoremap <leader>giW :grep -R <cWORD> .<cr>
--nnoremap <leader>gi'

-- Terminal Commands
map("t", "<C-[>", "<C-\\>n")


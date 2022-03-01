
" Semicolon for command mode
nnoremap ; :
vnoremap ; :

inoremap <C-;> <C-[>
vnoremap <C-;> <C-[>
cnoremap <C-;> <C-[>
tnoremap <C-;> <C-[>

" move in insert mode
"inoremap <C-h> <C-o>h
"inoremap <C-j> <C-o>j
"inoremap <C-k> <C-o>k
"inoremap <C-l> <C-o>l

inoremap <C-BS> <C-w>

" Scroll Buffer
nnoremap <silent> <C-j> <C-e>
nnoremap <silent> <C-k> <C-y>

" Left/Right does trigger completion in cmd
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

" Y/C Yank/Change to end of line
nnoremap Y y$
nnoremap C c$

" add line in n mode
nnoremap ,o o<Esc>
nnoremap ,O O<Esc>

" Copy to sys_clipboard
vnoremap <leader>y "+yg_
nnoremap <leader>Y "+0Yg_
nnoremap <leader>y "+yg_

" Paste from sys_clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Compile & Run cmds
"nnoremap <C-b>  <Cmd>call Compile() <Bar> call Run()<Cr> "build and run
"nnoremap <C-b>c <Cmd>call Compile<Cr> "compile
"nnoremap <C-b>r <Cmd>call Run<Cr> "run

" Grep
" source: https://learnvimscriptthehardway.stevelosh.com/chapters/32.html
"nnoremap <leader>g
"nnoremap <leader>giw :grep -R <cword> .<cr>
"nnoremap <leader>giW :grep -R <cWORD> .<cr>
"nnoremap <leader>gi'

" Terminal Commands
tnoremap <C-[> <C-\><C-n>

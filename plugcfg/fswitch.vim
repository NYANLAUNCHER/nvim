
au BufEnter *.hpp let b:fswitchdst = "cpp"
au BufEnter *.cpp let b:fswitchdst = "hpp"
au BufEnter *.hpp let b:fswitchdst = 'cpp' | let b:fswitchlocs = 'reg:|include.*|src/**|'

au BufEnter *.h  let b:fswitchdst = "c"
au BufEnter *.c let b:fswitchdst = "h"
au BufEnter *.h let b:fswitchdst = 'c' | let b:fswitchlocs = 'reg:|include.*|src/**|'

" mappings
nnoremap <silent> <C-f>f :FSHere<cr>
nnoremap <silent> <C-f>h :FSSplitLeft<cr>
nnoremap <silent> <C-f>j :FSSplitBelow<cr>
nnoremap <silent> <C-f>k :FSSplitAbove<cr>
nnoremap <silent> <C-f>l :FSSplitRight<cr>

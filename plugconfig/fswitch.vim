
au BufEnter *.hpp let b:fswitchdst = "cpp"
au BufEnter *.cpp let b:fswitchdst = "hpp"
au BufEnter *.hpp let b:fswitchdst = 'cpp' | let b:fswitchlocs = 'reg:|include.*|src/**|'

au BufEnter *.h  let b:fswitchdst = "c"
au BufEnter *.c let b:fswitchdst = "h"
au BufEnter *.h let b:fswitchdst = 'c' | let b:fswitchlocs = 'reg:|include.*|src/**|'

" mappings
nnoremap <silent> <S-h>f :FSHere<cr>
nnoremap <silent> <S-h>h :FSSplitLeft<cr>
nnoremap <silent> <S-h>j :FSSplitBelow<cr>
nnoremap <silent> <S-h>k :FSSplitAbove<cr>
nnoremap <silent> <S-h>l :FSSplitRight<cr>

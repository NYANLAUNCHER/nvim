
filetype plugin indent on

nnoremap <S-k> <C-y>

" Set the aux and output dirs
let g:latex_auxdir = ".latex_aux"
let g:latex_outdir = ".latex_out"

let g:vimtex_view_method = "zathura"

let g:vimtex_syntax_conceal_disable = 1

let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : g:latex_outdir,
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-auxdir=' . g:latex_auxdir,
    \ ],
    \}

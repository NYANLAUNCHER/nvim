
" turn into plugin eventually
" you init -'s (dashes show what to auto edit)
"  (syntax shows how to edit)
" 1. if you init with 1. it works like google docs
"   if you add a 1. after a - it replaces - with 1.
"   as usual \1. ignores this
" headers are defined by an ending:
"  \: ignores this
" header number is defined by spacing
" headers are stored in a quickfix like fasion
"  to move through them quickly
" choose what header layer number to tab through Ex: h2
"  this can also be set to the default, all
" headers also define folds automatically (works like normal)
" while writing you can type \n;
"  to move down a line and over a space
"   - before deleting \n; (it moves the -'s with it)
" you can view note structure through a coc-explorer like side bar menu
" when it's a plug-in I'll also make it work with telescope
" \ ignores a WORD. all \ will stay visible

" General sets
set nu rnu
set guicursor=a:block
set noerrorbells
set nowrap
set noswapfile
set nobackup
set nowritebackup
""set undodir=~/AppData/Local/nvim-data/undodir
""set undofile
set hidden
set nohlsearch
set incsearch
set ignorecase
set smartcase
set signcolumn=yes
set scrolloff=8
set splitbelow splitright
filetype on

" map Maximizer Toggle
"nnoremap <c-w>m :MaximizerToggle<cr>

" Note specific config
set ts=2 sts=2
set shiftwidth=2

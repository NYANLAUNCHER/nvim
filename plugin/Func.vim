
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Compile & Run cmds
if &filetype == "cpp" || "rust"
	let b:exe = "a.exe"
else
	let b:exe = ""
endif

if &filetype == "cpp"
	let b:compiler = "g++"
elseif &filetype == "autohotkey"
	let b:compiler = "autohotkey"
else
	let b:compiler = ""
endif

" figure out how to save a compile command for a certain dir
" or automatically execute one
fun! Compile()
    echo "Compiled"
endfun

" run executable in :terminal
fun! Run()
    echom "Running " + b:exe
    vs | term
endfun

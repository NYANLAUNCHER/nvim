" TODO: convert to lua

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" update plugins
fun! PlugSync()
  so ~/.config/nvim/cfg/plugins.lua
  PackerSync
endfun

" edit todo list
fun! TODO()
endfun

" set vars for the Compile & Run functions
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

" compile code
fun! Compile()
    echo "Compiled"
endfun

" run executable in :terminal
fun! Run()
    echom "Running " + b:exe
    vs | term
endfun

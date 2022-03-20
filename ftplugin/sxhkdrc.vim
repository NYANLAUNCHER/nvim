if exists("b:did_ftplugin")
	finish
endif

setl cms=#%s
setl ts=4 sts=4 sw=4

if exists('b:undo_ftplugin')
	let b:undo_ftplugin .= "|setlocal commentstring<"
else
	let b:undo_ftplugin = "setlocal commentstring<"
endif

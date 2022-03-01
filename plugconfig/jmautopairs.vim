
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
let b:AutoPairs = g:AutoPairs

au FileType html let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
au FileType json let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`"}

au FileType help let b:AutoPairs = {}
au FileType telescope let b:AutoPairs = {}

"Mappings
let g:AutoPairsShortcutToggle = '<A-p>'
let g:AutoPairsShortcutFastWrap = '<A-e>'
let g:AutoPairsShortcutJump = '<A-n>'
let g:AutoPairsShortcutBackInsert = '<A-b>'
let g:AutoPairsMoveCharacter = "()[]{}\"'"
let g:AutoPairsMapCh = 0
let g:AutoPairsFlyMode = 0

nnoremap <A-s> <Cmd>call FlyModeToggle()<Cr>
inoremap <A-s> <Cmd>call FlyModeToggle()<Cr>

fun! FlyModeToggle()
    if(g:AutoPairsFlyMode == 0)
        let g:AutoPairsFlyMode = 1
        echo "FlyMode Enabled"
    else
        let g:AutoPairsFlyMode = 0
        echo "FlyMode Disabled"
    endif
endfun

if exists("b:current_syntax")
    finish
endif
syn case ignore

" Features:
" G0, T, H, D, F, Z = red
" X, Y, & named/numbered parameters = cyan
" GCodes = orange
" MCodes = yellow
" operators & functions = red
" numbers = magenta
" '=', '+', '/', '*', '**' = white
" O, N, '[ ]', '%', '#', '< >', ';', & '( )' = grey


" Syntax
syntax match gcFileBlock /^%$/
syntax match gcProgramID /\(o[0-9][0-9]*\|:[0-9][0-9]*\)/
syntax match gcConstant /\(\-\=[.0-9]*\)/
syntax keyword gcConditional if else endif
syntax keyword gcRepeat do do1 do2 do3 while endwhile break continue end end1 end2 end3 goto
syntax keyword gcFunction sub endsub call return
syntax keyword gcOperator EQ NE GT GE LT LE ABS ACOS ASIN ATAN COS EXP FIX FUP LN ROUND SIN SQRT TAN MOD AND OR
syntax match gcOperatorPunc "[%\-+*/\[\]]"
syntax match gcIdentifier /#<*[A-Z_0-9]*>*/
syntax match gcComment /([^)]*)/


" Highlighting



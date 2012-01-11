" Vim indent file
" Filetype: PGN
" Maintainer: Yves `M'vy` Stadler <yves.stadler@gmail.fr>
" Created: 11 January 2012
"
if exists("b:did_indent")
    finish
endif
"let b:did_indent = 1

setlocal indentexpr=GetPGNIndent(v:lnum)

if exists("*GetPGNIndent")
    finish
endif

" Function that return the indent
function! GetPGNIndent(line_num)
    " The rule here is
    " - [.*] : line 0
    " - ( : indent + 1
    " - ) : indent - 1
    " - * same as preceding

    echo a:line_num
    let line = getline(a:line_num)

    if line =~ '^[.*]$'
        return 0
    endif

    let prevl = getline(a:line_num - 1)

    let ind = indent(a:line_num -1)

    echo indent(a:line_num - 1)
    if line =~ '^\s*('
        " New variation
        if prevl =~ '.*)$'
            " Variation close before cancels new variation indent
            return ind
        else
            return ind + &shiftwidth
        endif
    else
        "No new variation, end of preceding variation
        if prevl =~ '.*)$'
            return ind - &shiftwidth
        else
            "No new variation, no end of variation
            return ind
        endif
    endif

endfunction


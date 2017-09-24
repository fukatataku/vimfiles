" Highlight Setting

syntax on
set background=dark
set cursorline
set cursorcolumn
hi clear CursorLine
hi clear CursorColumn
highlight CursorLine ctermbg=8
highlight CursorColumn ctermbg=8

set showmatch
set matchpairs& matchpairs+=<:>

" 行末のスペースと全角スペースをハイライト
function! HiSpace()
    hi EndSpace cterm=underline ctermfg=Red gui=underline guifg=Red
    hi WideSpace cterm=underline ctermfg=Red gui=underline guifg=Red
endfunction
augroup MyAutoCmd
    au BufWinEnter,WinEnter * let w:m1 = matchadd("EndSpace", '\s\+$')
    if has('win32') || has('win64')
        au BufWinEnter,WinEnter * let w:m2 = matchadd("WideSpace", '　')
    else
        au BufWinEnter,WinEnter * let w:m2 = matchadd("WideSpace", '\%u3000')
    endif
    au ColorScheme * call HiSpace()
augroup END
call HiSpace()

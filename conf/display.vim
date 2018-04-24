" Display Settings

set ruler                       " カーソル位置の行数列数を表示
set number                      " 行番号表示
"set wrap                       " 行がwindow幅を超えた場合の折り返し
set list                        " Tab文字と行末文字表示
set listchars=tab:>>            " Tab,行末に表示する文字
highlight SpecialKey ctermfg=4  " タブ文字を色を設定
set visualbell t_vb=            " ビープ音を視覚表示に置き換えつつ、何も表示しない

set statusline=%f
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%=
set statusline+=[%l,%c]\ 
" set statusline+=%y\ 
set statusline+=[%{&fileencoding}/%{&fileformat}]\ 
set statusline+=%{fugitive#statusline()}
set laststatus=2                " ステータスラインを常に表示

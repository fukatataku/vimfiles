" Vimの基本設定 GUI用の設定はgvimrc
scriptencoding utf-8

" Release AutoGroup
augroup MyAutoCmd
    autocmd!
augroup END

"==============================================================================
" Encoding
"==============================================================================
if has('win32') || has('win64')
    set encoding=cp932
else
    set encoding=utf-8
endif
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,default,latin

"==============================================================================
" Edit Setting
"==============================================================================
set backspace=indent,eol,start      " Backspaceで何でも削除
set wildmenu wildmode=list:full     " コマンドライン補完強化
set completeopt=menuone             " 補完時の動作／表示
set autoindent                      " 自動インデント

" Tab Setting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Key Mapping
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

nnoremap j gj
nnoremap k gk

nnoremap <S-h> ^
vnoremap <S-h> ^
nnoremap <S-l> $
vnoremap <S-l> $

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nnoremap <S-Left> <C-w><
" nnoremap <S-Right> <C-w>>
nnoremap <S-Up> <C-w>-
nnoremap <S-Down> <C-w>+

nnoremap <C-s>h :<C-u>sp<CR>
nnoremap <C-s>v :<C-u>vs<CR>

" vimgrep 時の移動
nnoremap <S-Right> :cprevious<CR>
nnoremap <S-Left> :cnext<CR>
"nnoremap :<C-u>cfirst<CR>
"nnoremap :<C-u>clast<CR>

"==============================================================================
" Display Settings
"==============================================================================
set ruler                       " カーソル位置の行数列数を表示
set number                      " 行番号表示
"set wrap                       " 行がwindow幅を超えた場合の折り返し
"set list                       " Tab文字と行末文字表示
"set listchars=tab:≫\-,eol:$   " Tab,行末に表示する文字
set visualbell t_vb=            " ビープ音を視覚表示に置き換えつつ、何も表示しない

"===================
" Cursor
"===================
" 端末が制御シーケンスに対応している必要がある
" Teratermの場合は以下の設定が必要
" 設定 > その他の設定 > 制御シーケンス > カーソル形状/点滅変更制御シーケンス
" Macの場合、デフォルトのターミナルは対応していないので、iTerm2を使う
let &t_SI .= "\e[6 q"
let &t_EI .= "\e[2 q"

"===================
" Search Settings
"===================
set ignorecase
set smartcase
set incsearch
set hlsearch

"===================
" Highlight
"===================
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

" 80桁目をハイライト
if v:version >= 703
    set colorcolumn=80
    autocmd MyAutoCmd ColorScheme * hi ColorColumn guibg=Red ctermbg=1
endif

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

"==============================================================================
" Etc Settings
"==============================================================================

"===================
" Auto file
"===================
set nowritebackup
set nobackup
set noswapfile

"===================
" Printer
"===================
if has('printer')
  if has('win32')
    set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

"===================
" Tag jump settigns
"===================
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tagsファイルの重複防止
  set tags=./tags,tags
endif


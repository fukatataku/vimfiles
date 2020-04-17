" Key Mapping
let mapleader = "\<Space>"

" <Ctrl-j>でNormalモード
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

" 上下移動を見た目通りにする
nnoremap j gj
nnoremap k gk

" <Shift-h>で行頭へ
nnoremap <S-h> ^
vnoremap <S-h> ^

" <Shift-l>で行末へ
nnoremap <S-l> $
vnoremap <S-l> $

" 検索結果を画面中央へ
nnoremap n nzz
nnoremap N Nzz
nnoremap g* g*zz
nnoremap g# g#zz

" 検索時に移動しない
nnoremap * *N
nnoremap # #N

nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" ペインの移動
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

" タグジャンプ
nnoremap <C-]> g<C-]>

" jq
nnoremap <Leader>q :%!jq '.'<CR>

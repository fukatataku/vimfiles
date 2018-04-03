scriptencoding utf-8

" Release AutoGroup
augroup MyAutoCmd
    autocmd!
augroup END

" Load external config (standard)
runtime! conf/*.vim

" dein.vim
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/dein'))
  call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {
        \ 'build': 'make'
        \ })
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/unite.vim', {
        \ 'depends': ['vimproc.vim'],
        \ })
  "call dein#add('Shougo/vimshell.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimfiler')

  "call dein#add('tpope/vim-surround')
  "call dein#add('vim-scripts/Align')
  "call dein#add('vim-scripts/YankRing.vim')
  "call dein#add('lambdalisue/vim-django-support')
  "call dein#add('jmcantrell/vim-virtualenv')
  "call dein#add('davidhalter/jedi-vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Load external config (plugin)
runtime! conf/deinconf/*.vim

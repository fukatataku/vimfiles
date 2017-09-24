scriptencoding utf-8

" Release AutoGroup
augroup MyAutoCmd
    autocmd!
augroup END

" Load external file
runtime! conf/*.vim

" dein.vim
if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/dein'))
  call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable


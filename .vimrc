set autoindent
set cindent
set smartindent
set ruler
set number
set sm
set tabstop=4
set shiftwidth=4
set title
set cursorline
set softtabstop=4                              " TAB키를 눌렀을때 몇 칸을 이동?
set tabstop=4                                  " 하나의 TAB을 몇 칸으로 인식?
set shiftwidth=4                               " <<, >>을 눌렀을 때 몇 칸을 이동?
set expandtab                                  " TAB을 space로 인식
syntax on
"set noexpandtab                               " TAB을 TAB으로 인식
set tags=./tags,tags
set csto=0
set cst
set nocsverb
if filereadable("./cscope.out")
 cs add cscope.out
else
 cs add /usr/src/linux/cscope.out
endif
set csverb
set tagbsearch
set hlsearch                                   "search highlighting.

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle

 Bundle 'The-NERD-Tree'
 Bundle 'Taglist.vim'
 Bundle 'AutoComplPop'
 Bundle 'snipMate'
 Bundle 'Source-Explorer-srcexpl.vim'
 Bundle 'ntpeters/vim-better-whitespace'

filetype plugin indent on    " required

nmap <F10> :TlistToggle<CR>
nmap <F11> :NERDTree<CR>
nmap <F12> :noh<CR>

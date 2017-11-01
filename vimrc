
" Sets how many lines of history VIM has to remember
" VIM에서 기억할 히스토리 라인수
set history=1000

" Set to auto read when a file is changed from the outside
" 현재 사용하고 있는 파일이 외부에서 수정된 경우 자동으로 읽기
set autoread

set autoindent

" c style auto indent
" c언어 스타일로 indentation하기
set cindent

" #if has to be first on the line
" #if 문을 라인의 시작에 배치하기
set smartindent

" Always show current position
" 오른편 하단에 현재 위치의 (행, 렬)을 표시
set ruler

" Show matching brackets when text indicator is over them
" 현재 커서가 놓여진 괄호의 짝을 표시하기
set showmatch

" Set utf8 as standard encoding
" utf8을 표준 인코딩으로 사용하기
set encoding=utf8

" line number
" 라인넘버 표시하기
set number

set sm
set shiftwidth=4
set title
set cursorline
set softtabstop=4                              " TAB키를 눌렀을때 몇 칸을 이동?
set tabstop=4                                  " 하나의 TAB을 몇 칸으로 인식?
set shiftwidth=4                               " <<, >>을 눌렀을 때 몇 칸을 이동?
set expandtab                                  " TAB을 space로 인식
"set noexpandtab                               " TAB을 TAB으로 인식

syntax on
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
set hlsearch                  "search highlighting.

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

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

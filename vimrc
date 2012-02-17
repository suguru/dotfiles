autocmd!

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let vundle manage
Bundle 'gmarik/vundle'

" JSHint
Bundle 'manalang/jshint.vim'

" Solarized color scheme
Bundle "altercation/vim-colors-solarized"

" ====================
" visual options
" ====================
filetype plugin indent on
set showmode
set title
set ruler
set showcmd
set showmatch
set laststatus=2
set cursorline

" ====================
" programming
" ====================
set smartindent
set smartcase
set wrapscan
set tabstop=4
set shiftwidth=4

" ====================
" file encoding
" ====================
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,iso-2032-jp,cp932
set fileformat=unix
set fileformats=unix,dos,mac

" ====================
" line number toggle
" ====================
:nmap <C-N><C-N> <C-N><C-N> :set invnumber<CR>

" ====================
" color scheme
" ====================
syntax enable
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
set background=dark
colorschem solarized

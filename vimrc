autocmd!

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let vundle manage
Bundle 'gmarik/vundle'
" NerdTree
Bundle "scrooloose/nerdtree"
" mini buffer explorer
Bundle 'fholgado/minibufexpl.vim'

" Unite.vm
Bundle 'Shougo/unite.vim'
" YankRing
Bundle 'vim-scripts/YankRing.vim'
" JavaScript
Bundle 'pangloss/vim-javascript'
" JSHint
Bundle 'manalang/jshint.vim'
" neocomplcache
Bundle 'Shougo/neocomplcache'
" Solarized color scheme
Bundle 'altercation/vim-colors-solarized'
" CSS3
Bundle 'hail2u/vim-css3-syntax'
" Jade
Bundle 'vim-scripts/jade.vim'
" Stylus
Bundle 'wavded/vim-stylus'
" Yaml
Bundle 'ingydotnet/yaml-vim'

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
" mouse options
" ====================
if has("mouse")
	set mouse=a
endif

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
" Unite.vim
" ====================
let g:unite_enable_start_insert=1

nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	nmap <silent><buffer> <ESC><ESC> q
	imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction

" ====================
" netcomplcache
" ====================
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
let g:neocomplcache_min_syntax_length=3

inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr><C-h> neocomplcache#smart_close_popup()
"inoremap <expr><C-y> neocomplcache#close_popup()
"inoremap <expr><C-e> neocomplcache#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ====================
" color scheme
" ====================
syntax enable
set t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_degrade=0
"let g:solarized_bold=1
"let g:solarized_underline=1
"let g:solarized_italic=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
"set background=dark
"colorschem solarized
colorscheme wombat256mod

" ====================
" file types
" ====================
au! BufRead,BufNewFile *.json set filetype=javascript

" ====================
" disable IME when pushed ESC
" ====================
set imdisable

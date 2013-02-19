autocmd!

set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle/'))
endif

" NeoBundle
NeoBundle 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'

" NerdTree
NeoBundle 'scrooloose/nerdtree'

" Unite.vm
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'

" YankRing
" Bundle 'vim-scripts/YankRing.vim'
" PowerLine
NeoBundle 'Lokaltog/vim-powerline'
" GitVim
NeoBundle "motemen/git-vim"

" Syntastic
NeoBundle 'scrooloose/syntastic'

" JSHint
" Bundle 'jshint.vim'
" neocomplcache
NeoBundle 'Shougo/neocomplcache'
" JavaScript
NeoBundle 'pangloss/vim-javascript'
" CSS3
NeoBundle 'hail2u/vim-css3-syntax'
" Jade
NeoBundle 'vim-scripts/jade.vim'
" Stylus
NeoBundle 'wavded/vim-stylus'
" Yaml
NeoBundle 'ingydotnet/yaml-vim'
" Markdonw
NeoBundle 'tpope/vim-markdown'

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
set ttyfast

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
" clip board
" ====================
set clipboard=unnamed,autoselect

" ====================
" file encoding
" ====================
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" ====================
" key binds
" ====================
noremap <Right> :bn<cr>
noremap <Left> :bp<cr>

" ====================
" unite
" ====================
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
" syntastic
" ====================
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_jump=1
"let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map={
	\ 'mode': 'active',
	\ 'active_filetypes': ['javascript'],
	\ 'passive_filetypes': ['html']
	\}
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checkers = ['jshint']

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

" ====================
" font settings
" ====================
set guifont=Monaco:h10
set guifontwide=Monaco:10
set noantialias

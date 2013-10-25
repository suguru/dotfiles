autocmd!

set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" NerdTree
" NeoBundle 'scrooloose/nerdtree'
" NerdTree Tabs
" NeoBundle 'jistr/vim-nerdtree-tabs'

" VimProc
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
" Unite.vm
NeoBundle 'Shougo/unite.vim'

" Unite source
" NeoBundle 'h1mesuke/unite-outline'

" Surround
" NeoBundle "tpope/vim-surround"

" Airline (status-bar yet another powerline)
NeoBundle 'bling/vim-airline'
" vim-fugitive
" NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'tpope/vim-fugitive'
" GitGutter
" NeoBundle 'airblade/vim-gitgutter'

" Syntastic
NeoBundle 'scrooloose/syntastic'
" Tagbar
" NeoBundle 'majutsushi/tagbar'

" Dash.app
" NeoBundle 'rizzatti/funcoo.vim'
" NeoBundle 'rizzatti/dash.vim'

" Vim Multi cursor
" NeoBundle 'terryma/vim-multiple-cursors'

" Quick-Run
" NeoBundle "thinca/vim-quickrun"

" neocomplcache
NeoBundle 'Shougo/neocomplcache.vim'
" tern
NeoBundle 'marijnh/tern_for_vim'

"NeoBundle 'suguru/vim-javascript-syntax'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'jiangmiao/simple-javascript-indenter'
" Node.js
NeoBundle 'myhere/vim-nodejs-complete'

" CSS3
NeoBundle 'hail2u/vim-css3-syntax'
" Jade
NeoBundle 'digitaltoad/vim-jade'
" Stylus
NeoBundle 'wavded/vim-stylus'
" Yaml
NeoBundle 'ingydotnet/yaml-vim'
" Markdonw
NeoBundle 'tpope/vim-markdown'

" color table
" NeoBundle "guns/xterm-color-table.vim"
"
NeoBundle 'editorconfig/editorconfig-vim'

" ====================
" generic options
" ====================
set nobackup
set noswapfile
set incsearch

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
" cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" spaces
set list
set listchars=tab:»-

" ====================
" programming
" ====================
"set smartindent
set cindent
set smartcase
set wrapscan
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" ====================
" mouse options
" ====================
if has("mouse")
	set mouse=a
endif

" ====================
" search
" ====================
set ignorecase

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
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>
:nmap <C-N><C-N> :set invnumber<CR>

" ====================
" unite
" ====================
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	nmap <silent><buffer> <ESC><ESC> q
	imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction

imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
nmap <silent><buffer> <ESC><ESC> q
imap <silent><buffer> <ESC><ESC> <ESC>q
nnoremap [unite] <Nop>
nmap <Leader>u [unite]

nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]d :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir file_mru<CR>
nnoremap <silent> [unite]u :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]k :<C-u>Unite bookmark<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>

" unite yank history
let g:unite_source_history_yank_enable = 1
nnoremap <silent> [unite]y :<C-u>Unite history/yank<CR>

" let g:unite_enable_start_insert = 1
let g:unite_source_file_mru_limit = 100
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opts = ''
let g:unite_source_grep_max_candidates = 200

vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

" ====================
" VimFiler
" ====================
nnoremap <silent> [unite]e :VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0

" ====================
" GitGutter
" ====================
nnoremap <silent> ,gn :GitGutterNextHunk<CR>
nnoremap <silent> ,gp :GitGutterPrevHunk<CR>

" ====================
" powerline
" ====================
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:airline_powerline_fonts=1

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

autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ====================
" syntastic
" ====================
let g:syntastic_enable_signs=1
"let g:syntastic_auto_jump=1
"let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map={
	\ 'mode': 'active',
	\ 'active_filetypes': ['javascript'],
	\ 'passive_filetypes': ['html','cpp']
	\}
let g:syntastic_javascript_checkers = ['jshint']

" syntastic include dirs
" let g:syntastic_cpp_include_dirs = [
"			\ '/usr/include'
"			\ ,'/usr/local/include'
"			\ ,'/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk/usr/include'
"			\ ,'/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk/System/Library/Frameworks/OpenGLES.framework/Headers'
"			\ ,'/Users/namura_suguru/workspace/cocos2d-x/cocos2dx/platform/ios'
"			\ ,'/Users/namura_suguru/workspace/cocos2d-x/cocos2dx'
"			\ ,'/Users/namura_suguru/workspace/cocos2d-x/cocos2dx/include'
"			\ ,'/Users/namura_suguru/workspace/cocos2d-x/cocos2dx/platform/third_party/ios/libraries'
"			\ ,'/Users/namura_suguru/workspace/cocos2d-x/cocos2dx/kazmath/include'
"			\ ]
" let g:syntastic_cpp_check_header=1
" let g:syntastic_cpp_cflags = ' -I/usr/include/'
" let g:syntastic_cpp_remove_include_errors=1
" let g:syntastic_cpp_compiler='clang++'
" let g:syntastic_cpp_compiler_options=' -std=c++11 -stdlib=libc++'

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
"colorscheme wombat256mod
"colorscheme tomorrow-night-bright
"colorscheme gummybears
"colorscheme nazca
"colorscheme mango
colorscheme proteus

" ====================
" file types
" ====================
au! BufRead,BufNewFile *.json set filetype=javascript
au! BufRead,BufNewFile Gruntfile set filetype=javascript
" au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

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


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
" NeoBundle 'bling/vim-airline'
NeoBundle 'itchyny/lightline.vim'
" NeoBundle 'Lokaltog/vim-powerline'
" vim-fugitive
NeoBundle 'tpope/vim-fugitive'
" GitGutter
NeoBundle 'airblade/vim-gitgutter'

" Syntastic
NeoBundle 'scrooloose/syntastic'
" Tagbar
NeoBundle 'majutsushi/tagbar'

" Vim Over
NeoBundle 'osyo-manga/vim-over'
" Dash.app
" NeoBundle 'rizzatti/funcoo.vim'
" NeoBundle 'rizzatti/dash.vim'

" Vim Multi cursor
" NeoBundle 'terryma/vim-multiple-cursors'

" YankRing
NeoBundle 'LeafCage/yankround.vim'

" Quick-Run
NeoBundle "thinca/vim-quickrun"
" Open Browser
NeoBundle 'tyru/open-browser.vim'

" neocomplcache
" NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
" tern
NeoBundle 'marijnh/tern_for_vim'

"NeoBundle 'suguru/vim-javascript-syntax'
"NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'jiangmiao/simple-javascript-indenter'

" Coffeescript
NeoBundle 'kchmck/vim-coffee-script'

" Node.js
"NeoBundle 'myhere/vim-nodejs-complete'

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

" Markdonw preview
NeoBundle 'kannokanno/previm'

" color table
" NeoBundle "guns/xterm-color-table.vim"
"
NeoBundle 'editorconfig/editorconfig-vim'

" Color Schemes
" NeoBundle 'tomasr/molokai'
NeoBundle 'goatslacker/mango.vim'
" NeoBundle 'Lokaltog/vim-distinguished'
" JS Scope Context Coloring
" NeoBundle 'bigfish/vim-js-context-coloring'

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
" set smartindent
set cindent
set smartcase
set wrapscan
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent

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

" disable help
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>
" :nmap <C-N><C-N> :set invnumber<CR>

" tag key map
nnoremap <silent> <C-t>l :tabnext<CR>
nnoremap <silent> <C-t>h :tabprev<CR>
nnoremap <silent> <C-t>c :tabclose<CR>
nnoremap <silent> <C-t>n :tabnew<CR>

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
" nnoremap <silent> [unite]k :<C-u>Unite bookmark<CR>
" nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>

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
" Tagbar
" ====================
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" ====================
" Yankround
" ====================
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

" ====================
" GitGutter
" ====================
nnoremap <silent> ,gn :GitGutterNextHunk<CR>
NeoBundleFetch 'Shougo/neobundle.vim'

" ====================
" powerline
" ====================
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'
" unicode symbols
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" set linespace=2

" ====================
" neocomplete
" ====================
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" ====================
" netcomplcache
" ====================
" let g:neocomplcache_enable_at_startup=1
" let g:neocomplcache_enable_smart_case=1
" let g:neocomplcache_enable_camel_case_completion=1
" let g:neocomplcache_enable_underbar_completion=1
" let g:neocomplcache_min_syntax_length=3
" inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"

autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ====================
" neo-snippets
" ====================
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = '~/.vim/snippets'

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

" ====================
" color scheme
" ====================
syntax enable
set t_Co=256
set background=dark
colorscheme mango
"colorscheme proteus
"colorscheme molokai
"colorscheme distinguished

" Adjust omnifunc pop menu
highlight Pmenu ctermbg=179 ctermfg=16 cterm=bold
highlight CursorLine ctermbg=237
" Color Scheme for javascript
highlight jsFunction ctermfg=105
highlight jsFuncName ctermfg=111
highlight jsFuncArgs ctermfg=211
highlight jsObjectKey ctermfg=141
highlight jsFunctionKey ctermfg=141
highlight Noise ctermfg=216

" ====================
" file types
" ====================
au! BufRead,BufNewFile *.json set filetype=javascript
" au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

" ====================
" disable IME when pushed ESC
" ====================
set imdisable

" ====================
" font settings
" ====================
" set guifont=Monaco:h10
" set guifontwide=Monaco:10
" set noantialias


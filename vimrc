autocmd!

set nocompatible
filetype off

"if has('vim_starting')
"  set runtimepath+=~/.vim/bundle/neobundle.vim
"endif

call plug#begin('~/.vim/plugged')
"call neobundle#rc(expand('~/.vim/bundle/'))

" NeoBundle
" NeoBundleFetch 'Shougo/neobundle.vim'

" NerdTree
Plug 'scrooloose/nerdtree'
" NerdTree Tabs
" NeoBundle 'jistr/vim-nerdtree-tabs'

" VimProc
" NeoBundle 'Shougo/vimfiler'
" NeoBundle 'Shougo/vimproc'
" NeoBundle 'Shougo/vimshell'
" Unite.vm
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/neomru.vim'

" CtrlP
Plug 'kien/ctrlp.vim'

" Surround
" NeoBundle "tpope/vim-surround"

" Airline (status-bar yet another powerline)
" NeoBundle 'bling/vim-airline'
Plug 'itchyny/lightline.vim'

" ===== Git =====
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'


" ===== Syntax Checker =====

Plug 'scrooloose/syntastic'

" ===== Tagbar ======

Plug 'majutsushi/tagbar'

" ===== Controls ======

Plug 'osyo-manga/vim-over'

" Vim Multi cursor
" NeoBundle 'terryma/vim-multiple-cursors'

Plug 'LeafCage/yankround.vim'

Plug 't9md/vim-choosewin'

Plug 'thinca/vim-quickrun'

Plug 'tyru/open-browser.vim'

" ===== Completion =====
Plug 'Valloric/YouCompleteMe'

Plug 'marijnh/tern_for_vim'

" ===== Snippets =====
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" ====== Programming Languages =====
" Javascript
Plug 'pangloss/vim-javascript'
" Dart
Plug 'dart-lang/dart-vim-plugin'
" Coffeescript
Plug 'kchmck/vim-coffee-script'
" Node.js
"NeoBundle 'myhere/vim-nodejs-complete'
" GLSL
Plug 'tikhomirov/vim-glsl'
" Go
Plug 'fatih/vim-go'
" Dockerfile
Plug 'ekalinin/Dockerfile.vim'
" CSS3
Plug 'hail2u/vim-css3-syntax'
" Jade
Plug 'digitaltoad/vim-jade'
" Stylus
Plug 'wavded/vim-stylus'
" Yaml
Plug 'stephpy/vim-yaml'
" Gyp
Plug 'kelan/gyp.vim'
" Markdonw
Plug 'tpope/vim-markdown'
" Markdonw preview
Plug 'kannokanno/previm'
" Editor config
Plug 'editorconfig/editorconfig-vim'

" Color Schemes
Plug 'w0ng/vim-hybrid'

call plug#end()

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
for n in range(1,9)
  execute 'nnoremap <silent> <C-t>'.n ':tabnext '.n.'<CR>'
endfor

" ====================
" ctrlp
" ====================
" let g:ctrlp_use_migemo = 1
let g:ctrlp_clear_cache_on_exit = 1
" let g:ctrlp_working_path_mode   = 'ra'
let g:ctrlp_mruf_max            = 500
let g:ctrlp_custom_ignore = 'DS_Store\|\.git\|\.hg\|\.svn\|optimized\|compiled\|node_modules\|bower_components'
let g:ctrlp_open_new_file       = 1

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
let g:unite_source_file_mru_limit = 200
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opts = ''
let g:unite_source_grep_max_candidates = 200

vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

" ====================
" VimFiler
" ====================
" nnoremap <silent> [unite]e :VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>
nnoremap <silent> e :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = 1
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
nmap <C-k> <Plug>(yankround-prev)
nmap <C-j> <Plug>(yankround-next)

" ====================
" GitGutter
" ====================
nnoremap <silent> ,gn :GitGutterNextHunk<CR>

" ====================
" LightLine
" ====================
let g:lightline = {
      \ 'active': {
      \   'left': [
      \     ['mode'],
      \     ['readonly', 'fugitive', 'filename', 'modified']
      \   ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"*":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }

" ====================
" ChooseWin
" ====================
nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable = 1
let g:choosewin_overlay_clear_multibyte = 1

" ====================
" neocomplete
" ====================
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_ignore_case = 1
" let g:neocomplete#max_list = 5
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#enable_fuzzy_completion = 1

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
" Go lang
" ====================
let g:go_snippet_engine = "ultisnips"

" ====================
" clang_complete
" ====================
" Disable auto completion, always <c-x> <c-o> to complete
"let g:clang_complete_auto = 0
"let g:clang_auto_select = 0
"let g:clang_use_library = 1
"let g:clang_complete_copen = 1
"" let g:clang_debug=1
"let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib'
"let g:clang_user_options = '-std=c++11 -stdlib=libc++'

" ====================
" YouCompleteMe
" ====================
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_filepath_completion_use_working_dir = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

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
"let g:syntastic_cpp_compiler = '/usr/bin/clang'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" ====================
" color scheme
" ====================
syntax enable
set t_Co=256
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
"colorscheme mango
"colorscheme proteus
"colorscheme molokai
"colorscheme jellybeans

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


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
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" CtrlP
Plug 'kien/ctrlp.vim'

" Vimproc
Plug 'Shougo/vimproc.vim'

" Surround
" NeoBundle "tpope/vim-surround"

" Status line
Plug 'itchyny/lightline.vim'

" ===== Git =====
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/committia.vim'
Plug 'idanarye/vim-merginal'

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
" Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/neocomplete'

Plug 'marijnh/tern_for_vim'

" ===== Snippets =====
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" ====== Programming Languages =====
" Javascript
Plug 'pangloss/vim-javascript'
" JSON
Plug 'elzr/vim-json'
" JSX
Plug 'mxw/vim-jsx'
" Flow
" Plug 'facebook/vim-flow'
" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Coffeescript
Plug 'kchmck/vim-coffee-script'
" Node.js
"NeoBundle 'myhere/vim-nodejs-complete'
" GLSL
Plug 'tikhomirov/vim-glsl'
" Go
Plug 'fatih/vim-go', { 'for': 'go' }
" Dockerfile
Plug 'ekalinin/Dockerfile.vim'
" CSS3
Plug 'hail2u/vim-css3-syntax'
" Jade
Plug 'digitaltoad/vim-jade'
" handlebars
Plug 'mustache/vim-mustache-handlebars'
" Stylus
Plug 'wavded/vim-stylus'
" Less
Plug 'groenewege/vim-less'
" Yaml
Plug 'chase/vim-ansible-yaml'
" Gyp
Plug 'kelan/gyp.vim'
" Markdonw
Plug 'tpope/vim-markdown'
" Markdonw preview
Plug 'kannokanno/previm'
" Editor config
Plug 'editorconfig/editorconfig-vim'
" Protocolbuffers
Plug 'uarun/vim-protobuf'
" Terraform
Plug 'bkad/vim-terraform'
" Gradle
Plug 'tfnico/vim-gradle'

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

" , as leader
let mapleader = ","

" tag key map
nnoremap <silent> <C-t>l :tabnext<CR>
nnoremap <silent> <C-t>h :tabprev<CR>
nnoremap <silent> <C-t>c :tabclose<CR>
nnoremap <silent> <C-t>n :tabnew<CR>
for n in range(1,9)
  execute 'nnoremap <silent> <C-t>'.n ':tabnext '.n.'<CR>'
endfor

" buffer
nnoremap <silent> <Leader>bb :bprevious<CR>
nnoremap <silent> <Leader>bf :bnext<CR>

" NERDTree
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>
" TAGBar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" key-bind for go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap gs <Plug>(go-def-split)
au FileType go nmap gr <Plug>(go-rename)
au FileType go nmap gi :GoImports<CR>
au FileType go nmap gv :GoVet<CR>
au FileType go nmap gl :GoLint<CR>

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" au FileType go au BufWritePost,FileWritePost <buffer> execute 'GoLint' | cwindow

" au FileType go au BufWritePre <buffer> GoLint
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" let g:go_fmt_command = "goimports"

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
" NERDTree
" ====================
let g:NERDTreeMinimalUI = 1
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0

" ====================
" Tagbar
" ====================

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

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.go = '\h\w\.\w*'
" let g:neocomplete#sources#omni#input_patterns.typescript = '\h\w\.\w*'
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.typescript = '[^. *\t]\.\w*\|\h\w*::'

autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ====================
" Go lang
" ====================
let g:go_snippet_engine = "ultisnips"

" ====================
" Typescript
" ====================
let g:typescript_compiler_options = '--jsx react --module umd'

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
      \ 'active_filetypes': ['javascript','json','jsx','typescript'],
      \ 'passive_filetypes': ['html','cpp']
      \}
let g:syntastic_javascript_checkers = ['eslint'] ",'flow']
let g:syntastic_go_checkers = ['go', 'golint', 'go vet']
let g:syntastic_typescript_checkers = ['tslint']
"let g:syntastic_cpp_compiler = '/usr/bin/clang'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" ====================
" color scheme
" ====================
syntax enable
set t_Co=256
set background=dark
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

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
" au! BufRead,BufNewFile *.json set filetype=javascript
" au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
autocmd BufNewFile,BufRead *.ts  set filetype=typescript
autocmd BufNewFile,BufRead *.tsx set filetype=typescript

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


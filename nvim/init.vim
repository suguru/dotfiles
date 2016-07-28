autocmd!

filetype off

"set runtimepath+=~/.vim/dein.vim
"let s:dein_dir = expand('~/.vim/dein_cache')
"let s:dein_dir = expand('~/.vim/dein_cache_vim')
"endif
"if dein#load_state(s:dein_dir)
"  call dein#begin(s:dein_dir)
"  let g:vim_dir   = expand('~/.vim')
"  let s:toml      = g:vim_dir . '/dein.toml'
"  let s:toml_lazy = g:vim_dir . '/dein_lazy.toml'
"  call dein#load_toml(s:toml,      { 'lazy': 0 })
"  call dein#load_toml(s:toml_lazy, { 'lazy': 1 })
"  call dein#end()
"  call dein#save_state()
"endif
"if dein#check_install()
"  call dein#install()
"endif
let g:python_host_prog = '/usr/local/bin/python3'

call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'LeafCage/yankround.vim'
Plug 'tyru/open-browser.vim'
Plug 'osyo-manga/vim-over'
Plug 'mhinz/vim-grepper'
Plug 'mileszs/ack.vim'

" Theme
Plug 'w0ng/vim-hybrid'

" Programming languagees
"

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'Shougo/deoplete.nvim'

Plug 'editorconfig/editorconfig-vim'

Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': 'javascript' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

Plug 'elzr/vim-json', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make' }

Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" Plug 'lambdalisue/vim-pyenv', { 'for': 'python' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }

Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }

Plug 'digitaltoad/vim-pug', { 'for': 'pug' }

Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'cespare/vim-toml', { 'for': 'toml' }

Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'kannokanno/previm', { 'for': 'markdown' }

Plug 'uarun/vim-protobuf', { 'for': 'protobuf' }

Plug 'bkad/vim-terraform', { 'for': 'terraform' }

Plug 'fatih/vim-nginx'

Plug 'tfnico/vim-gradle', { 'for': 'gradle' }

Plug 'kylef/apiblueprint.vim', { 'for': 'apiblueprint' }

Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'wdalmut/vim-phpunit', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }
Plug 'nelsyeung/twig.vim', { 'for': 'twig' }

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
if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif
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
set incsearch
set nohlsearch

" ====================
" clip board
" ====================
if has('nvim')
  set clipboard+=unnamedplus
  function! ClipboardYank()
    call system('pbcopy', @@)
  endfunction
  function! ClipboardPaste()
    let @@ = system('pbpaste')
  endfunction
  vnoremap <silent> y y:call ClipboardYank()<cr>
  vnoremap <silent> d d:call ClipboardYank()<cr>
  nnoremap <silent> p :call ClipboardPaste()<cr>p
else
  set clipboard=unnamed,autoselect
endif

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
nnoremap <silent> <C-b>p :bprevious<CR>
nnoremap <silent> <C-b>n :bnext<CR>

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
au FileType go nmap gl :GoMetaLinter<CR>
au FileType go nmap gc :GoCallees<CR>
au FileType go nmap gr :GoReferrers<CR>
au FileType go nmap gm :GoRename<CR>

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" au FileType go au BufWritePost,FileWritePost <buffer> execute 'GoLint' | cwindow

" au FileType go au BufWritePre <buffer> GoLint
let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "gofmt"
let g:go_fmt_fail_silently = 1

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
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [
      \     ['mode', 'paste'], ['readoly', 'fugitive', 'filename', 'modified'],
      \   ],
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"*":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_function': {
      \    'fugitive': 'LightLineFugitive',
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
" neocomplete / deoplete
" ====================
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

if has('nvim')
  " Use deoplete
  let g:deoplete#enable_at_startup = 1
  " let g:deoplete#enable_smart_case = 1
  let g:deoplete#enable_ignore_case = 1
  let g:deoplete#auto_completion_start_length=2
  let g:deoplete#sources#syntax#min_keyword_length = 1
  let g:deoplete#enable_fuzzy_completion = 1

"  inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
"  inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"

  let g:deoplete#sources#go#align_class = 1

else

  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#enable_ignore_case = 1
  let g:neocomplete#auto_completion_start_length=2
  let g:neocomplete#sources#syntax#min_keyword_length = 1
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  let g:neocomplete#enable_fuzzy_completion = 1
  set completeopt=menuone

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS>  neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y> neocomplete#close_popup()
  inoremap <expr><C-e> neocomplete#cancel_popup()
  " Close popup by <Space>.
  "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"


  " Enable heavy omni completion.
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.go = '\h\w*\.\?'
  "let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'

  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif
  let g:neocomplete#force_omni_input_patterns.typescript = '[^. *\t]\.\w*\|\h\w*::'
  let g:neocomplete#force_omni_input_patterns.go = '\h\w*\.\?'
  "let g:neocomplete#force_omni_input_patterns.go = '[^.[:digit:] *\t]\.\w*'
endif

autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType go setlocal completeopt+=noinsert,noselect
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

" ===================
" ACK
" ===================
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ====================
" Go lang
" ====================
" let g:go_snippet_engine = "ultisnips"

" ====================
" Javascript
" ====================
let g:jsx_ext_required = 0

" ====================
" Python
" ====================
let g:jedi#force_py_version    = 3
let g:virtualenv_auto_activate = 1

" ====================
" Flowtype
" ====================
let g:flow#autoclose = 1

" ====================
" Typescript
" ====================
" let g:typescript_compiler_options = '--jsx react --module commonjs'

" ====================
" YouCompleteMe
" ====================
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_filepath_completion_use_working_dir = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

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
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_typescript_checkers = ['tslint']
"let g:syntastic_cpp_compiler = '/usr/bin/clang'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" ====================
" color scheme
" ====================
syntax enable
set t_Co=256
set background=dark
let g:hybrid_custom_term_colors = 1
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
autocmd BufNewFile,BufRead *.ts  setlocal filetype=typescript
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript
autocmd BufNewFile,BufRead *.go  setlocal filetype=go
autocmd BufNewFile,BufRead *.jade setlocal filetype=pug

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


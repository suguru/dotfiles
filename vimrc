autocmd!

filetype off

if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein.vim

let s:dein_dir = expand('~/.vim/dein_cache')
if !has('nvim')
  let s:dein_dir = expand('~/.vim/dein_cache_vim')
endif

if dein#load_state(s:dein_dir)

call dein#begin(s:dein_dir)

" NerdTree
call dein#add('scrooloose/nerdtree')

" CtrlP
call dein#add('kien/ctrlp.vim')

" Vimproc
call dein#add('Shougo/vimproc.vim', { 'build': { 'mac': 'make' }})

" Surround
" NeoBundle "tpope/vim-surround"

" Status line
call dein#add('itchyny/lightline.vim')

" ===== Git =====
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')

" ===== Syntax Checker =====

call dein#add('scrooloose/syntastic')

" ===== Tagbar ======

call dein#add('majutsushi/tagbar')

" ===== Controls ======

call dein#add('osyo-manga/vim-over')

call dein#add('LeafCage/yankround.vim')

call dein#add('tyru/open-browser.vim')

" ===== Completion =====
if has('nvim')
  call dein#add('Shougo/deoplete.nvim', { 'autoload': { 'insert': 1 }})
else
  call dein#add('Shougo/neocomplete', { 'autoload': { 'insert': 1 }})
endif

call dein#add('marijnh/tern_for_vim', { 'autoload': { 'filetypes': 'javascript' }, 'build': { 'others': 'npm install' }})

" ===== Snippets =====
" call dein#add('SirVer/ultisnips')
" call dein#add('honza/vim-snippets')

" ====== Programming Languages =====
" Javascript
call dein#add('pangloss/vim-javascript', { 'autoload': { 'filetypes': 'javascript' }})
" JSON
call dein#add('elzr/vim-json', { 'autoload': { 'filetypes': 'json' }})
" JSX
call dein#add('mxw/vim-jsx', { 'autoload': { 'filetypes': 'javascript' }})
" Typescript
call dein#add('leafgarland/typescript-vim', { 'autoload': { 'filetypes': 'typescript' }})
call dein#add('Quramy/tsuquyomi', { 'autoload': { 'filetypes': 'typescript' }})

" Coffeescript
call dein#add('kchmck/vim-coffee-script', { 'autoload': { 'filetypes': 'coffeescript' }})
" Node.js
call dein#add('myhere/vim-nodejs-complete')
" GLSL
call dein#add('tikhomirov/vim-glsl', { 'autoload': { 'filetypes': 'glsl' }})
" Go
call dein#add('fatih/vim-go', { 'autoload': { 'filetypes': 'go' }})

if has('nvim')
  call dein#add('zchee/deoplete-go', { 'autoload': { 'filetypes': 'go' }, 'build': {'unix':'make', 'mac':'make'}})
endif

" Python
call dein#add('davidhalter/jedi-vim', { 'autoload': { 'filetypes': 'python' }})
call dein#add('andviro/flake8-vim', { 'autoload': { 'filetypes': 'python' }})
call dein#add('hynek/vim-python-pep8-indent', { 'autoload': { 'filetypes': 'python' }})
call dein#add('jmcantrell/vim-virtualenv', { 'autoload': { 'filetypes': 'python' }})

" Dockerfile
call dein#add('ekalinin/Dockerfile.vim', { 'autoload': { 'filetypes': 'dockerfile' }})
" CSS3
call dein#add('hail2u/vim-css3-syntax', { 'autoload': { 'filetypes': 'css' }})
" Jade
call dein#add('digitaltoad/vim-pug', { 'autoload': { 'filetypes': 'pug' }})
" handlebars
call dein#add('mustache/vim-mustache-handlebars', { 'autoload': { 'filetypes': 'handlebars' }})
" Stylus
call dein#add('wavded/vim-stylus', { 'autoload': { 'filetypes': 'stylus' }})
" Less
call dein#add('groenewege/vim-less', { 'autoload': { 'filetypes': 'less' }})
" Yaml
call dein#add('stephpy/vim-yaml', { 'autoload': { 'filetypes': 'yaml' }})
" Toml
call dein#add('cespare/vim-toml', { 'autoload': { 'filetypes': 'yaml' }})
" Handlebars
" Markdown
call dein#add('tpope/vim-markdown', { 'autoload': { 'filetypes': 'markdown' }})
" Markdown preview
call dein#add('kannokanno/previm', { 'autoload': { 'filetypes': 'markdown' }})
" Editor config
call dein#add('editorconfig/editorconfig-vim')
" Protocolbuffers
call dein#add('uarun/vim-protobuf', { 'autoload': { 'filetypes': 'protobuf' }})
" Terraform
call dein#add('bkad/vim-terraform', { 'autoload': { 'filetypes': 'terraform' }})
" nginx
call dein#add('fatih/vim-nginx')
" Gradle
call dein#add('tfnico/vim-gradle', { 'autoload': { 'filetypes': 'gradle' }})
" APIBluePrint
call dein#add('kylef/apiblueprint.vim', { 'autoload': { 'filetypes': 'apiblueprint' }})

" Color Schemes
call dein#add('w0ng/vim-hybrid')

call dein#end()
call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

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
  let g:deoplete#enable_smart_case = 1
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


" ====================
" Go lang
" ====================
" let g:go_snippet_engine = "ultisnips"

" ====================
" Javascript
" ====================
let g:jsx_ext_required = 0

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


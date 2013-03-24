" Vim color file
" Maintainer:	Suguru Namura
"
set background=dark

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "proteus"

hi Normal        ctermfg=252             cterm=none
hi Cursor        ctermfg=234 ctermbg=228 cterm=none
hi CursorLine                ctermbg=236 cterm=none
hi Visual        ctermfg=232 ctermbg=178
hi LineNr        ctermfg=242 ctermbg=234
hi CursorLineNr  ctermfg=228 ctermbg=232 cterm=bold
hi Search        ctermfg=177 ctermbg=241
hi MatchParen    ctermfg=234 ctermbg=130

hi WarningMsg    ctermfg=99
hi ErrorMsg      ctermfg=196 ctermbg=236

hi Pmenu         ctermfg=254 ctermbg=22
hi PmenuSel      ctermfg=254 ctermbg=233 cterm=bold

hi Keyword       ctermfg=111
hi Comment       ctermfg=238
hi String        ctermfg=113
hi Repeat        ctermfg=70  cterm=bold
hi Error         ctermfg=160
hi Todo          ctermfg=197 ctermbg=232 cterm=bold,underline
hi Identifier    ctermfg=111 cterm=bold
hi Function      ctermfg=214 cterm=bold
hi Conditional   ctermfg=40  cterm=bold
hi Statement     ctermfg=178
hi Operator      ctermfg=136
hi Branch        ctermfg=136 cterm=bold
hi Special       ctermfg=113
hi Type          ctermfg=177
hi Label         ctermfg=111
hi Number        ctermfg=112
hi Float         ctermfg=155
hi Boolean       ctermfg=155
hi Null          ctermfg=63

"hi jsRegexpString ctermfg=red
hi javascriptGlobal        ctermfg=174
hi javascriptGlobalObjects ctermfg=172 cterm=bold
hi javascriptBraces        ctermfg=203
hi javascriptParens        ctermfg=216
hi javascriptIdentifier    ctermfg=167 cterm=bold
hi javascriptFuncArg       ctermfg=153
hi javascriptFuncKeyword   ctermfg=214 cterm=bold
hi javascriptFuncDef       ctermfg=111
"hi jsDocTags     ctermfg=magenta
hi javascriptOpSymbols     ctermfg=33
hi javascriptLogicSymbols  ctermfg=105
hi javascriptEndColons     ctermfg=33
hi javascriptStatement     ctermfg=135 cterm=bold
hi javascriptDocParamType  ctermfg=81
hi javascriptDocNamedParamType ctermfg=39
"hi jsDocType     ctermfg=cyan
"hi jsDocTypeNoParam ctermfg=cyan
"hi jsDocParam    ctermfg=cyan


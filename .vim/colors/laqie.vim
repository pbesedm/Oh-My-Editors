set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "laqie"

hi Normal       guifg=#cccccc   guibg=#171717     gui=NONE    
hi NonText      guifg=#A7A7A7   guibg=#171717     gui=NONE   
hi Cursor       guifg=black     guibg=white     gui=NONE
hi LineNr       guifg=#7D7D7D   guibg=#101010     gui=NONE 
hi VertSplit    guifg=#202020   guibg=#202020   gui=NONE      
hi StatusLine   guifg=#CCCCCC   guibg=#202020   gui=italic
hi StatusLineNC guifg=#666666   guibg=#202020   gui=NONE    
hi Folded       guifg=#a0a8b0   guibg=#384048   gui=NONE 
hi Title        guifg=#f6f3e8   guibg=NONE      gui=bold
hi Visual       guifg=NONE      guibg=#262D51   gui=NONE
hi SpecialKey   guifg=#808080   guibg=#343434   gui=NONE
hi WildMenu     guifg=green     guibg=yellow    gui=NONE
hi PmenuSbar    guifg=black     guibg=white     gui=NONE
hi Question     guifg=#e8b87e   guibg=#343434   gui=bold 
hi Error        guifg=NONE      guibg=NONE      gui=undercurl
hi ErrorMsg     guifg=white     guibg=#FF6C60   gui=BOLD    
hi WarningMsg   guifg=white     guibg=#FF6C60   gui=BOLD   
hi treeDir      guifg=#a0a0f0   guibg=NONE      gui=italic
hi Directory    guifg=#a0a0f0   guibg=NONE      gui=italic

" Message displayed in lower left, such as --INSERT--
hi ModeMsg      guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE      guibg=#121212     gui=NONE
  hi CursorColumn   guifg=NONE      guibg=#121212     gui=NONE
  hi MatchParen     guifg=#f6f3e8   guibg=#857b6f     gui=BOLD
  hi Pmenu          guifg=#f6f3e8   guibg=#444444     gui=NONE
  hi PmenuSel       guifg=#000000   guibg=#cae682     gui=NONE
  hi Search         guifg=NONE      guibg=NONE        gui=underline
endif

" Syntax highlighting
hi Comment      guifg=#7C7C7C     guibg=NONE    gui=NONE
hi String       guifg=#A8FF60     guibg=NONE    gui=NONE
hi Number       guifg=#FF73FD     guibg=NONE    gui=NONE
"hi Number       guifg=#A4E063     guibg=NONE    gui=NONE

hi Keyword      guifg=#96CBFE     guibg=NONE    gui=NONE
hi PreProc      guifg=#96CBFE     guibg=NONE    gui=NONE
"hi PreProc      guifg=#DBFAC6     guibg=NONE    gui=NONE
hi Conditional  guifg=#6699CC     guibg=NONE    gui=BOLD

hi Todo         guifg=#c0a0ff     guibg=NONE    gui=NONE
hi Constant     guifg=#99CC99     guibg=NONE    gui=NONE

hi Identifier   guifg=#C6C5FE     guibg=NONE    gui=NONE
hi Function     guifg=#C0CDEA     guibg=NONE    gui=BOLD
hi Type         guifg=#FFFFB6     guibg=NONE    gui=NONE
hi Statement    guifg=#DBFAC6     guibg=NONE    gui=BOLD
"hi Statement    guifg=#B3CCA2     guibg=NONE    gui=BOLD
"hi Statement    guifg=#74A7C7        guibg=NONE    gui=BOLD

hi Special      guifg=#E18964     guibg=NONE    gui=NONE
hi Delimiter    guifg=#00A0A0     guibg=NONE    gui=NONE
hi Operator     guifg=white       guibg=NONE    gui=BOLD

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Comment
hi link SpecialComment  Special
hi link Debug           Special
" Special for HTML
hi link htmlTag         String 
hi link htmlTagName     Special
hi link htmlEndTag      Constant
hi link htmlSpecialChar Comment

hi link xmlTag          String
hi link xmlTagName      Special
hi link xmlEndTag       Constant

" CSS
hi cssSelectorOp guifg=#eeeeec
hi link cssSelectorOp2 cssSelectorOp
hi link cssUIProp String
hi link cssPagingProp cssUIProp
hi link cssGeneratedContentProp cssUIProp
hi link cssRenderProp cssUIProp
hi link cssBoxProp cssUIProp
hi link cssTextProp cssUIProp
hi link cssColorProp cssUIProp
hi link cssFontProp cssUIProp
"hi cssPseudoClassId guifg=#eeeeec
hi cssBraces guifg=#888a85
"hi cssIdentifier guifg=#fcaf3e
"hi cssClassName guifg=#fcaf3e
hi cssTagName guifg=#fcaf3e
"hi link cssInclude Function
hi link cssClassName Function
hi link cssIdentifier Function
hi link cssCommonAttr Constant
hi link cssUIAttr Constant
hi link cssTableAttr Constant
hi link cssPagingAttr Constant
hi link cssGeneratedContentAttr Constant
hi link cssAuralAttr Constant
hi link cssRenderAttr Constant
hi link cssBoxAttr Constant
hi link cssTextAttr Constant
hi link cssColorAttr Constant
hi link cssFontAttr Constant

"python
syn keyword pythonOperator self

" Vim color file -
"
" Based on oceandeep colorscheme by Tom Regner <vim@tomsdiner.org>
" 	URL: http://vim.sourceforge.net/script.php?script_id=368


""" Init
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "oceandeep2"

"""" GUI 

highlight Cursor        gui=None guibg=#b14308 guifg=White
highlight CursorIM      gui=bold guifg=white guibg=PaleTurquoise3
highlight CursorLine    gui=None guibg=#003853
highlight CursorColumn  gui=None guibg=#003853
highlight SignColumn    gui=None guibg=bg
highlight Directory     guifg=LightSeaGreen guibg=bg
highlight DiffAdd       gui=None guifg=fg guibg=DarkCyan
highlight DiffChange    gui=None guifg=fg guibg=Green4
highlight DiffDelete    gui=None guifg=fg guibg=black
highlight DiffText      gui=bold guifg=fg guibg=bg
highlight ErrorMsg      guifg=LightYellow  guibg=FireBrick
highlight VertSplit     gui=NONE guifg=black guibg=grey60
highlight Folded        gui=bold guibg=#305060 guifg=#b0d0e0
highlight FoldColumn    gui=bold guibg=#305060 guifg=#b0d0e0
highlight IncSearch     gui=reverse guifg=fg guibg=bg
highlight LineNr        gui=NONE guibg=bg guifg=LightSkyBlue3
highlight ModeMsg       guibg=DarkGreen guifg=LightGreen
highlight MoreMsg       gui=bold  guifg=SeaGreen4 guibg=bg
if version < 600
    " same as SpecialKey
    highlight NonText   guibg=#123A4A guifg=#3D5D6D
else
    " Bottom fill (use e.g. same as LineNr)
    highlight NonText   gui=None guibg=#103040 guifg=LightSkyBlue
endif
highlight Normal        gui=None guibg=#103040 guifg=honeydew2
highlight Question      gui=bold  guifg=SeaGreen2 guibg=bg
highlight Search        gui=bold guibg=bg guifg=Red
highlight SpecialKey    guibg=#103040 guifg=#324262
highlight StatusLine    gui=NONE guibg=grey88 guifg=black
highlight StatusLineNC  gui=NONE guibg=grey60 guifg=grey10
highlight Title         gui=bold  guifg=MediumOrchid1 guibg=bg
highlight Visual        gui=reverse guibg=WHITE guifg=SeaGreen
highlight VisualNOS     gui=bold,underline guifg=fg guibg=bg
highlight WarningMsg    gui=bold guifg=FireBrick1 guibg=bg
highlight WildMenu      gui=bold guibg=Chartreuse guifg=Black

highlight Comment       gui=italic guifg=#507080
highlight Constant      guifg=cyan3 guibg=bg
highlight String        gui=None guifg=turquoise2 guibg=bg
highlight Number        gui=None guifg=Cyan guibg=bg
highlight Boolean       gui=None guifg=Cyan guibg=bg
highlight Identifier    guifg=LightSkyBlue3
highlight Function      gui=None guifg=DarkSeaGreen3 guibg=bg

highlight Statement     gui=None guifg=LightGreen
highlight Conditional   gui=None guifg=LightGreen guibg=bg
highlight Repeat        gui=None guifg=LightGreen guibg=bg
highlight Operator      gui=None guifg=Chartreuse guibg=bg
highlight Keyword       gui=None guifg=LightGreen guibg=bg
highlight Exception     gui=None guifg=LightGreen guibg=bg

highlight PreProc       guifg=#74db30
highlight Include       gui=italic guifg=#427c1b guibg=bg
highlight Define        gui=None guifg=#dbdf00 guibg=bg
highlight Macro         gui=None guifg=#dbdf00 guibg=bg
highlight PreCondit     gui=None guifg=#dbdf00 guibg=bg

highlight Type          gui=NONE guifg=LightGreen
highlight StorageClass  gui=None guifg=LightGreen guibg=bg
highlight Structure     gui=None guifg=LightGreen guibg=bg
highlight Typedef       gui=None guifg=LightGreen guibg=bg

highlight Special       gui=bold guifg=aquamarine3
highlight Underlined    gui=underline guifg=honeydew4 guibg=bg
highlight Ignore        guifg=#204050
highlight Error         guifg=LightYellow  guibg=FireBrick
highlight Todo          gui=italic,underline guifg=Cyan guibg=bg
if v:version >= 700
    highlight PMenu      gui=bold guibg=LightSkyBlue4 guifg=honeydew2
    highlight PMenuSel   gui=bold guibg=DarkGreen guifg=honeydew2
    highlight PMenuSbar  gui=bold guibg=LightSkyBlue4
    highlight PMenuThumb gui=bold guibg=DarkGreen
    highlight SpellBad   gui=undercurl guisp=Red
    highlight SpellRare  gui=undercurl guisp=Orange
    highlight SpellLocal gui=undercurl guisp=Orange
    highlight SpellCap   gui=undercurl guisp=Yellow
endif

""" Console
if v:version >= 700
    highlight PMenu      cterm=bold ctermbg=DarkGreen ctermfg=Gray
    highlight PMenuSel   cterm=bold ctermbg=Yellow ctermfg=Gray
    highlight PMenuSbar  cterm=bold ctermbg=DarkGreen
    highlight PMenuThumb cterm=bold ctermbg=Yellow
    highlight SpellBad   ctermbg=Brown
    highlight SpellRare  ctermbg=Brown
    highlight SpellLocal ctermbg=Brown
    highlight SpellCap   ctermbg=Yellow
endif

highlight Normal        ctermfg=Gray ctermbg=None
highlight Search        ctermfg=Black ctermbg=Red cterm=NONE
highlight Visual        ctermbg=DarkRed
highlight Cursor        ctermfg=Black ctermbg=Green cterm=bold
highlight Special       ctermfg=Brown
highlight Comment       ctermfg=DarkGray
highlight StatusLine    ctermfg=Blue ctermbg=White
highlight Statement     ctermfg=Yellow cterm=NONE
highlight Type          cterm=NONE
highlight Macro         ctermfg=DarkRed
highlight Identifier    ctermfg=DarkYellow
highlight Structure     ctermfg=DarkGreen
highlight String        ctermfg=DarkCyan

" vim: sw=4 ts=4 et

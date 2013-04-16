" Ligthroom - light colorsheme
" Name: lightroom
" Maintainer: Alexandr A. Prusov <alexprusov@gmail.com>
" Version: 1.0

set background=light
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "lightroom"

if v:version >= 700
	hi CursorColumn               guibg=#E5E7F1   gui=none cterm=none ctermfg=59 ctermbg=189
	hi CursorLine                 guibg=#E5E7F1   gui=none cterm=none ctermfg=59 ctermbg=189
	hi Pmenu        guifg=#505F65 guibg=#EDECEB   gui=none ctermfg=59 ctermbg=255
	hi PmenuSel     guifg=#EEE8D5 guibg=#586E75   gui=bold cterm=bold ctermfg=231 ctermbg=60
	hi PmenuSbar    guifg=#EDECEB guibg=#EDECEB   gui=none ctermfg=255 ctermbg=255
	hi PmenuThumb   guifg=#121212 guibg=#121212   gui=none ctermfg=233 ctermbg=233
	hi TabLine                    guibg=LightGrey gui=underline cterm=underline cterm=underline ctermfg=59 ctermbg=252
	hi TabLineFill  guifg=#C0C999                 gui=reverse cterm=reverse ctermfg=231 ctermbg=150
	hi TabLineSel                                 gui=bold cterm=bold cterm=bold ctermfg=59 ctermbg=231
	if has('spell')
		hi SpellBad                                 gui=undercurl cterm=underline cterm=undercurl ctermfg=196 ctermbg=231
		hi SpellCap                                 gui=undercurl cterm=underline cterm=undercurl ctermfg=21 ctermbg=231
		hi SpellLocal                               gui=undercurl cterm=underline cterm=undercurl ctermfg=30 ctermbg=231
		hi SpellRare                                gui=undercurl cterm=underline cterm=undercurl ctermfg=201 ctermbg=231
	endif
endif

hi Cursor         guifg=#FEFDFE guibg=#505E63   gui=none cterm=none ctermfg=231 ctermbg=59
hi CursorIM                                     gui=none cterm=none ctermfg=59  ctermbg=231

hi diffFile    guifg=#505F65 gui=bold cterm=bold ctermfg=59 ctermbg=231
hi diffLine    guifg=#338E98 gui=bold cterm=bold ctermfg=66 ctermbg=231
hi diffSubname guifg=#505F65 gui=bold cterm=bold ctermfg=59 ctermbg=231
hi diffAdded   guifg=#983733 gui=none ctermfg=95 ctermbg=231 guifg=#983733
hi diffRemoved guifg=#379833 gui=none ctermfg=65 ctermbg=231

hi Directory  guifg=#406ACC                gui=bold cterm=bold cterm=bold ctermfg=62 ctermbg=231
hi ErrorMsg   guifg=White    guibg=Red     gui=none ctermfg=231 ctermbg=196
hi FoldColumn guifg=#B9B9B9  guibg=#EAEAEA gui=none ctermfg=250 ctermbg=255
hi Folded     guifg=#505F65  guibg=#EDECEB gui=bold,underline cterm=bold,underline ctermfg=59 ctermbg=255
hi IncSearch  guifg=#FDF3D7  guibg=#CB4B16 gui=bold,italic cterm=bold,italic ctermfg=230 ctermbg=166
hi LineNr     guifg=#B9B9B9  guibg=#EAEAEA gui=none cterm=none ctermfg=250 ctermbg=255
hi MatchParen guifg=#B58900  guibg=#F7E9BE gui=bold cterm=bold ctermfg=136 ctermbg=223
hi ModeMsg                                 gui=bold cterm=bold cterm=bold ctermfg=59 ctermbg=231
hi MoreMsg    guifg=SeaGreen               gui=bold cterm=bold cterm=bold ctermfg=29 ctermbg=231
hi NonText    guifg=#414A4D  guibg=#FFFFFF gui=bold cterm=bold cterm=bold ctermfg=59 ctermbg=231
hi Normal     guifg=#505F65  guibg=#FFFFFF gui=none ctermfg=59 ctermbg=231
hi Question   guifg=SeaGreen               gui=bold cterm=bold ctermfg=29 ctermbg=231
hi Search     guifg=#F7E9BE  guibg=#B58900 gui=none cterm=none ctermfg=223 ctermbg=136
hi SignColumn guifg=DarkBlue guibg=Grey    gui=none ctermfg=18 ctermbg=250
hi SpecialKey guifg=#839496  guibg=#EEE8D5 gui=bold cterm=bold cterm=bold ctermfg=102 ctermbg=224

hi StatusLine   guifg=#415157 guibg=#C9C9C9 gui=none cterm=none ctermfg=59 ctermbg=251
hi StatusLineNC guifg=#839496 guibg=#D9D9D9 gui=none cterm=none ctermfg=102 ctermbg=253

hi Title       guifg=#69B62F                  gui=bold cterm=bold cterm=bold ctermfg=70 ctermbg=231
hi VertSplit   guifg=#D9D9D9    guibg=#D9D9D9 gui=none cterm=none ctermfg=253 ctermbg=253
hi Visual      guifg=#FDF6E3    guibg=#93A1A1 gui=none cterm=none ctermfg=230 ctermbg=109
hi VisualNOS   guifg=#FDF6E3    guibg=#93A1A1 gui=bold,underline cterm=bold,underline ctermfg=230 ctermbg=109
hi WarningMsg  guifg=Red                      gui=none ctermfg=196 ctermbg=231
hi WildMenu    guifg=#EEE8D5    guibg=#073642 gui=bold cterm=bold ctermfg=231 ctermbg=23
hi Boolean     guifg=#3535D3                  gui=none ctermfg=62 ctermbg=231
hi Character   guifg=#43B7E2                  gui=none ctermfg=74 ctermbg=231
hi Comment     guifg=#1D821D                  gui=italic cterm=bold,italic ctermfg=28 ctermbg=231
hi Constant    guifg=#43B7E2                  gui=bold,italic cterm=bold,italic ctermfg=74 ctermbg=231
hi Delimiter   guifg=#657B83                  gui=none ctermfg=66 ctermbg=231
hi Error       guifg=#FDF6E3    guibg=#D9493A gui=none cterm=none ctermfg=230 ctermbg=167
hi Float       guifg=#3535D3                  gui=none ctermfg=62 ctermbg=231
hi Function    guifg=#7C27BC                  gui=none ctermfg=91 ctermbg=231
hi Identifier  guifg=#894F68                  gui=none cterm=none ctermfg=95 ctermbg=231
hi Ignore      guifg=bg                       gui=none ctermfg=231 ctermbg=231
hi Number      guifg=#3535D3                  gui=none ctermfg=62 ctermbg=231
hi Operator    guifg=#3535D3                  gui=none ctermfg=62 ctermbg=231
hi PreProc     guifg=#7E4D28                  gui=bold cterm=bold ctermfg=94 ctermbg=231
hi Special     guifg=#7343E2                  gui=bold cterm=bold cterm=bold ctermfg=62 ctermbg=231
hi Statement   guifg=#B412E0                  gui=bold cterm=bold cterm=bold ctermfg=128 ctermbg=231
hi String      guifg=#6C6CCE                  gui=italic cterm=italic ctermfg=62 ctermbg=231
hi Todo        guifg=#C10000    guibg=#FFFF9A gui=bold cterm=bold ctermfg=124 ctermbg=228
hi Type        guifg=#1C64C9                  gui=bold cterm=bold ctermfg=26 ctermbg=231
hi Underlined  guifg=SlateBlue                gui=underline cterm=underline ctermfg=62 ctermbg=231
hi ColorColumn                  guibg=#FFE8E8 cterm=none ctermfg=59 ctermbg=224

hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Exception Statement
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Typedef Type

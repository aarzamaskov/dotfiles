" ----------------------------------------------------------------------------
" COLORS
" ----------------------------------------------------------------------------

" if (empty($TMUX))
"   if (has("nvim"))
"     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   endif
"   if (has("termguicolors"))
"     set termguicolors
"   endif
" endif

set background=dark            " Adjust the default color groups for that background type
silent! colorscheme jellybeans " Set the colorscheme
" set background=light
" silent colorscheme PaperColor

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

highlight link EndOfBuffer ColorColumn
hi User1 ctermfg=231 guifg=#ffffff ctermbg=16 guibg=#191f26 gui=BOLD
hi User2 ctermfg=16 guifg=#000000 ctermbg=247 guibg=#959ca6
hi User3 ctermfg=16 guifg=#000000 ctermbg=146 guibg=#7c90af gui=ITALIC
hi User4 ctermfg=52 guifg=#C70039 ctermbg=146 guibg=#7c90af gui=BOLD
hi User5 ctermfg=231 guifg=#ffffff ctermbg=146 guibg=#7c90af gui=BOLD
hi User6 ctermfg=226 guifg=#ffc300 ctermbg=146 guibg=#7c90af gui=BOLD
hi User7 ctermfg=16 guifg=#000000 ctermbg=146 guibg=#7c90af


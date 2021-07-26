" ----------------------------------------------------------------------------
" PLUGIN MAPPINGS
" ----------------------------------------------------------------------------

" Toggle NERDTree plugin
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

"COC
"main commands
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gr <Plug>(coc-references)
nmap <Leader>kr <Plug>(coc-rename)
xmap <Leader>ka <Plug>(coc-codeaction-selected)
nmap <Leader>kf <Plug>(coc-format)
nmap <Leader>kc :CocCommand editor.action.pickColor<Enter>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>s  <Plug>(coc-codeaction-selected)
nmap <leader>s  <Plug>(coc-codeaction-selected)

"ShowDocumentation in functions.vim
nnoremap <silent>K :call ShowDocumentation()<Enter>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"scroll windows
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<Enter>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<Enter>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

"request window/popup
inoremap <silent><expr> <C-Space> coc#refresh()

"expand snippets
imap <C-l> <Plug>(coc-snippets-expand)

"select from menu by Enter
inoremap <silent><expr> <Enter> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<Enter>\<C-r>=coc#on_enter()\<Enter>"


" FZZ mapping
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" RG SETTINGS
nnoremap <leader>a :Rg<space>
nnoremap <leader>A :exec "Rg ".expand("<cword>")<cr>

autocmd VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color  "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" PHP-CS-FIXER
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>f :call PhpCsFixerFixFile()<CR>

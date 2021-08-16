" ----------------------------------------------------------------------------
" PLUGIN VARIABLES
" ----------------------------------------------------------------------------

"highlight yank
let g:highlightedyank_highlight_duration = 300

"COC
let g:coc_global_extensions=[
            \'coc-css',
            \'coc-html',
            \'coc-markdownlint',
            \'coc-json',
            \'coc-phpls',
            \'coc-tsserver',
            \'coc-solargraph',
            \'coc-spell-checker',
            \'coc-snippets',
            \'coc-yank',
            \'coc-pyright'
            \]

"NERDTreeGitPlugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'m',
                \ 'Staged'    :'s',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'r',
                \ 'Unmerged'  :'u',
                \ 'Deleted'   :'d',
                \ 'Dirty'     :'~',
                \ 'Ignored'   :'i',
                \ 'Clean'     :'c',
                \ 'Unknown'   :'-',
                \ }
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.linenr = ' ㏑:'

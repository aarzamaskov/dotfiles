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
            \'coc-psalm',
            \'coc-tsserver',
            \'coc-solargraph',
            \'coc-snippets',
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


" ----------------------------------------------------------------------------
" FUNCTIONS VIM
" ----------------------------------------------------------------------------

function! HasGit() abort
    let l:branch = fugitive#statusline()
    return len(l:branch) > 1
endfunction

function! CurrentGitBranch() abort
    if HasGit()
        let l:branch = split(fugitive#statusline(),'[()]')
        return remove(l:branch, 1)
    endif
    return ""
endfunction

function! DiagnosticStatus() abort
    let l:info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let l:error = info['error']
    let l:warning = info['warning']
    let l:information = info['information']
    let l:hint = info['hint']
    if (l:error == 0) && (l:warning == 0) && (l:information == 0) && (l:hint == 0)
        return ""
    endif
    return printf('w:%d e:%d h:%d i:%d', l:warning, l:error, l:hint, l:information)
endfunction

function! GitStatus() abort
    if HasGit()
        let [a, m, r] = GitGutterGetHunkSummary()
        if (a == 0) && (m == 0) && (r == 0)
            return ""
        endif
        return printf('   +:%d ~:%d -:%d', a, m, r)
    endif
    return ""
endfunction

function! ShowDocumentation()
    if &filetype == 'vim'
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    if l:counts.total == 0
        return ""
    endif
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return printf('[?:%d !:%d]', l:all_non_errors, l:all_errors)
endfunction


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


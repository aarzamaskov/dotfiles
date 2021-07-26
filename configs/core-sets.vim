" ----------------------------------------------------------------------------
" CORE SETS
" ----------------------------------------------------------------------------

if &compatible
    set nocompatible
endif

set smartindent                " Carry over indenting from previous line
set autoread                   " Don't bother me hen a file changes
set autowrite                  " Write on :next/:prev/^Z
set backspace=indent,eol,start " Allow backspace beyond insertion point
set cindent                    " Automatic program indenting
set encoding=utf8              " UTF-8 by default
set linebreak                  " Break long lines by word, not char
set nobackup                   " No backups left after done editing
set nowritebackup              " No backups made while editing
set noswapfile                 " No swap files
set expandtab                  " Replace tab character with appropriate number of spaces in insert mode
set tabstop=4                  " Number of spaces in a tab is displayed
set softtabstop=4              " Number of spaces in at tab when added
set shiftwidth=4               " Set number of spaces by using << and >>
set clipboard=unnamedplus      " Use common clipboard in Vim and in other programms
set number                     " Set line number
set termguicolors
"statusline
set statusline=
set statusline+=\%*
set statusline+=%3*\ %F
set statusline+=%5*
set statusline+=\ %{CurrentGitBranch()}
set statusline+=%4*\ %m
set statusline+=%3*
set statusline+=%=
set statusline+=%4*\%{DiagnosticStatus()}
set statusline+=%6*\%{GitStatus()}
set statusline+=%3*\ \ 
set statusline+=%2*\%l
set statusline+=%7*\:
set statusline+=%2*\%L
set statusline+=%7*\::
set statusline+=%2*\%c
set statusline+=%3*\ \%*

set inccommand=nosplit

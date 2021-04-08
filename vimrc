"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
" Arzamaskov's .vimrc file
"

" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

let mapleader = ','

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk

" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Toggle NERDTree plugin
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" Disable search highlighting text
nnoremap <esc> :noh<return><esc>


" ----------------------------------------------------------------------------
" OPTIONS
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

" ----------------------------------------------------------------------------
" INSTALL PLUGINS with VIM-PLUG
" ----------------------------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" The NERDTree is a file system explorer for the Vim editor
Plug 'preservim/nerdtree'

" Universal set of defaults
Plug 'tpope/vim-sensible'

" The plugin provides mappings to easily delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'

" Comment stuff out
Plug 'tpope/vim-commentary'

" The statusline is the colored line at the bottom, which contains information
Plug 'vim-airline/vim-airline'

" Plugin to use Git from Vim
Plug 'tpope/vim-fugitive'

" Highlight all trailing whitespace characters
Plug 'ntpeters/vim-better-whitespace'

" Emmet plugin for Vim
Plug 'mattn/emmet-vim'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" Plugin to generate tags files
Plug 'ludovicchabant/vim-gutentags'

" Vim syntax for PHP
Plug 'StanAngeloff/php.vim'

" Integrate php-cs-fixer in Vim
Plug 'stephpy/vim-php-cs-fixer'

" Shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'

" Fuzzy search plugin for fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Help to show warnigs near the line numbers is anything wrong in code
Plug 'neomake/neomake'

" Auto-completion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax checking and semantic errors
Plug 'w0rp/ale'

" Plugin that lets you highlight, navigate, and operate on sets of matching text
Plug 'andymass/vim-matchup'

call plug#end()

" ----------------------------------------------------------------------------
" PLUGINS SETTINGS
" ----------------------------------------------------------------------------

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

" COC.NVIM PLUGIN SETTINGS
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

" ----------------------------------------------------------------------------
" COLORS
" ----------------------------------------------------------------------------

set background=dark            " Adjust the default color groups for that background type
silent! colorscheme jellybeans " Set the colorscheme
set termguicolors              " Enable 24-bit RGB color


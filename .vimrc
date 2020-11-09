" Use 256 colors in vim
" some plugins not work without it
set t_Co=256

set nocompatible

" Turn off filetype plugins before bundles init
filetype off

set tabstop=4
set shiftwidth=4
set smarttab
set et

set wrap

set ai
set cin

set showmatch 
set hlsearch
set incsearch
set ignorecase

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

set nu
syntax on
set background=dark
colorscheme solarized

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
let mapleader = ','

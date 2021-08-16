" ----------------------------------------------------------------------------
" INSTALLED PLUGINS
" ----------------------------------------------------------------------------
"  Plugin installed with vim-plug (https://github.com/junegunn/vim-plug)

call plug#begin('~/.config/nvim/plugged')
"Special~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" The NERDTree is a file system explorer for the Vim editor
Plug 'preservim/nerdtree'

" Highlights all visible nodes that are open in Vim and closes buffer
Plug 'PhilRunninger/nerdtree-buffer-ops'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Universal set of defaults
Plug 'tpope/vim-sensible'

" The plugin provides mappings to easily delete, change and add such surroundings in pairs
Plug 'tpope/vim-surround'

" Comment stuff out
Plug 'tomtom/tcomment_vim'

" Highlight all trailing whitespace characters
Plug 'ntpeters/vim-better-whitespace'

" Fuzzy search plugin for fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Emmet for Vim
Plug 'mattn/emmet-vim'

" Integrate php-cs-fixer in Vim
Plug 'stephpy/vim-php-cs-fixer'

" Adds Smarty syntax
Plug 'blueyed/smarty.vim'

" Plugin that lets you highlight, navigate, and operate on sets of matching text
Plug 'andymass/vim-matchup'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" Create PHP-Docs
Plug 'mikehaertl/pdv-standalone'

"Git~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plugin to use Git from Vim
Plug 'tpope/vim-fugitive'

" Shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'

" X-Debug plugin
Plug 'vim-vdebug/vdebug'

" PHP refactoring plugin
Plug 'adoy/vim-php-refactoring-toolbox'

"Look and feel~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" A plugin of NERDTree showing git status flags
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vim airline
Plug 'vim-airline/vim-airline'

call plug#end()

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jnurmine/Zenburn'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'

call plug#end()

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72

set rnu
set number
set ts=2
set sw=2
set expandtab

filetype plugin indent on
syntax enable
color zenburn

" map leader to space
let mapleader = ' '

" copy and paste to system clipboard
set clipboard=unnamedplus

" enable airline
let g:airline#extensions#tabline#enabled = 1

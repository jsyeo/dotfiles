call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jnurmine/Zenburn'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

" copy and paste to system clipboard
set clipboard=unnamedplus

" enable airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'zenburn'

" map leader to space
let mapleader = ' '

" reindent the entire file
map <Leader>I gg=G``<cr>

" Removes trailing spaces
function! StripTrailingWhitespaces()
    %s/\s\+$//e
endfunction

autocmd FileWritePre    * :call StripTrailingWhitespaces()
autocmd FileAppendPre   * :call StripTrailingWhitespaces()
autocmd FilterWritePre  * :call StripTrailingWhitespaces()
autocmd BufWritePre     * :call StripTrailingWhitespaces()

" clean up trailing whitespace
map <Leader>c :call StripTrailingWhitespaces()<cr>

" Plugins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" Basic Config
let g:mapleader = ","
set clipboard+=unnamed            " Copy and Paste from the system clipboard
set hidden                        " Enables to switch between unsaved buffers and keep undo history
set autowrite                     " Automatically :write before running commands
set wildmode=list:longest,full    " Command Line configurations
set colorcolumn=80                " Highlight 80 column
let g:html_indent_tags = 'li\|p'  " Treat <li> and <p> tags like the block tags they are
set list listchars=tab:»·,trail:· " Display extra whitespace
set mouse=a
set hlsearch                      " Highlight all search pattern matches
set ignorecase                    " Searching is not case sensitive
set smartcase                     " Make search case sensitive only if it contains uppercase letters
set splitbelow                    " Open new split panes to bottom, which feels more natural
set splitright                    " Open new split panes to right, which feels more natural
set nobackup                      " Don't let Vim to ever write a backup files
set nowritebackup
set noswapfile
set number                        " Display line numbers
set numberwidth=5                 " Change line numbers column width
set background=dark               " Use gruvbox dark theme
silent! colorscheme gruvbox               " Use gruvbox theme

" NerdTree
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeRespectWildIgnore=1

" Keymaps
nnoremap <F2> :NERDTreeToggle<cr>
inoremap jj <esc>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz
nnoremap c "xc
xnoremap c "xc
nnoremap <leader><leader> <c-^>
nnoremap <leader>w :write<cr>
nnoremap <leader>q :quit<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>Q :quitall<cr>

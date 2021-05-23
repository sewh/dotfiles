" leader change
let mapleader = ","

" filetype changes
filetype plugin on
filetype indent on
syntax enable

" go filetype changes
au FileType go setlocal noexpandtab

" keybindings
map! jj <Esc>
map! ppp <Esc>ppa
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext<cr>

" merge system clipboard
set clipboard=unnamedplus

" set text formatting stuff
set encoding=utf8
set ffs=unix

" set global text changes
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" show line numbers
set number

" reload when files change from the outside
set autoread
au FocusGained,BufEnter * checktime

" search changes
set ignorecase
set hlsearch
set incsearch
set magic

" disable annoying files
set nobackup
set nowb
set noswapfile

" appearance
colorscheme murphy

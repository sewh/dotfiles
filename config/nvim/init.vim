call plug#begin(stdpath('config') . '/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'morhetz/gruvbox'
Plug 'cormacrelf/vim-colors-github'
Plug 'fatih/vim-go'
Plug 'elixir-editors/vim-elixir'
Plug 'Vimjas/vim-python-pep8-indent'
call plug#end()

" leader change
let mapleader = ","

" filetype changes
filetype plugin on
filetype indent on
syntax enable

" allow mouse
set mouse=a

" go filetype changes
au FileType go setlocal noexpandtab

" yaml filetype changes
au FileType yaml,yml setlocal shiftwidth=2 tabstop=2

" keybindings
map! jj <Esc>
map! ppp <Esc>pa
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext<cr>
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
map <C-n> :NERDTreeToggle<CR>
map <C-b> :TagbarToggle<CR>

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
colorscheme github
set background=light


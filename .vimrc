syntax on
filetype indent on
set shiftwidth=2
set tabstop=2
set expandtab
set ai
set incsearch
set hlsearch
set ruler
set backspace=indent,eol,start
filetype on
"Not using any plugins at the moment
"execute pathogen#infect()

"Lazy method for using folds
set foldmethod=indent

"Leaders for moar shortcuts
let mapleader=","
let localmapleader="\\"

"Make it easier to make it easier to edit text
"Edit ~/.vimrc on the go
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"And reload ~/.vimrc afterwards
nnoremap <leader>sv :source$MYVIMRC<cr>

"Add double quotes around current word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"Add single quotes around current word
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"Comment out selection in old C
nnoremap <leader>* mz{jI/*<esc>}kA*/<esc>`z

"Heh
command WQ wq
command Wq wq
command W w
command Q q

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

"Push current line to the line beneath
nnoremap - ddp
"Push current line to the line above
nnoremap _ ddkP

" Easy way to reindent file
nnoremap <leader>= gg=G

"Make it easier to make it easier to edit text
"Edit ~/.vimrc on the go
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"And reload ~/.vimrc afterwards
nnoremap <leader>sv :source$MYVIMRC<cr>

"Add double quotes around current word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"Add single quotes around current word
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"Comment out this section in C
nnoremap <leader>* mz{jI/*<esc>}kA*/<esc>`z

"Want to map W to w, Q to q, etc

"Save's your left hand
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-c> <nop>
inoremap <c-[> <nop>

"Arrow keys are bad
noremap OD <nop>
noremap OC <nop>
noremap OB <nop>
noremap OA <nop>

"Force width of 80 (unless HTML? todo...)
set textwidth=80

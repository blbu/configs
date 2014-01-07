syntax on
filetype indent on
set shiftwidth=4
set tabstop=4
"set expandtab
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
nnoremap <leader>= gg=G``

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

"Comment out this line in C
nnoremap <leader>/ I//<esc>j

"Want to map W to w, Q to q, etc

"Saves your left hand
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
set textwidth=0

"split screen and shift the right file to the left a bit; comfy editing
nnoremap <leader>fs :vsplit <Return> <bar> <c-w>l <bar> 40<c-w>>

"Put current line just above the middle for comfy viewing
nnoremap <leader>z 10jzz10k

"HTML tag insertions
nnoremap <leader>h2 I<h2><esc>A</h2><esc>
nnoremap <leader>td Bi<td><esc>Ea</td><esc>

"Block commenting in bash
nnoremap <leader>#} 0<c-V>}kI#<esc>

"Making a checklist
nnoremap <leader>[<space>]} mz0<c-V>}I[ ]<esc>`z

"Paste currently-yanked line over top of current line
nnoremap <leader>p pkdd

set mouse=a

"Delete a set of brackets
nnoremap <leader>d( %x``x

"Add a layer of brackets
nnoremap <leader>i( %a)<esc>``i(<esc>

"Surround a word with whitespace
nnoremap <leader>i<space> i<space><esc>Wa<space><esc>

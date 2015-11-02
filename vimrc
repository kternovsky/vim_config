execute pathogen#infect()
syntax on
filetype plugin indent on
set t_Co=256
set autoindent
set tabstop=8
set shiftwidth=8
set textwidth=80
set colorcolumn=80
set smartindent
set number
set modelines=0
set nohlsearch
set incsearch
set cursorline
set laststatus=2
set completeopt=menuone
set exrc
set showcmd
set cm=blowfish
set wmnu
set wig=*.class
set background=dark
set grepprg=ag\ --vimgrep
set guioptions=-L
colorscheme solarized

set backupdir=~/.vim/backup/
set directory=~/.vim/swp/

let mapleader = " "

"Sanity
inoremap jk <ESC>
inoremap kj <ESC>

"SOVIET RUSSIA
nnoremap <Leader>ru :set keymap=russian-jcukenwin langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz<CR>
nnoremap <Leader>en :set keymap= langmap=<CR>

"Scratch
nnoremap <Leader>s :enew<cr>:setlocal buftype=nofile bufhidden=wipe nobuflisted<cr>

"Windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

"Quickfix & Location window
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lx :lclose<CR>
nnoremap <Leader>ln :lnext<CR>
nnoremap <Leader>lp :lp<CR>
nnoremap <Leader>lf :lfirst<CR>
nnoremap <Leader>ll :llast<CR>
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cx :cclose<CR>
nnoremap <Leader>cn :cnext<CR>
nnoremap <Leader>cp :cprev<CR>
nnoremap <Leader>cf :cfirst<CR>
nnoremap <Leader>cl :clast<CR>

"buffers
nnoremap <Leader>bf :ls<CR>:b 
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>

"file search
nnoremap <Leader>f :find 

" dev stuff
set path=**
set tags=./tags,tags;

runtime! config/*.vimrc

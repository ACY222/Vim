set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers and relative numbers
set number
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Enable to hidden buffers
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Display inputting commands
set showcmd

" abey the indent rules of file type
filetype indent on

" Stay the same with last line after typing enter
set autoindent

set tabstop=4	" the size of tab
set expandtab	" transfer tab to space automatically
set softtabstop=4

set ruler           " display cursor's current location
set textwidth=80    " the width of each line
set wrap            " break lines automatically
set linebreak       " break only when encountering with specific character
set scrolloff=20

set spell spelllang=en_us   " check the correctness of word-spelling
set nobackup                " don't create backup file
set noswapfile              " don't create swap file
set undofile                " create undo file
set undodir=~/.vim/.undo//
set history=100             " record 100 operations

set autochdir               " change directory when open a new file
set visualbell

set autoread                " when editing files are changed in other place

set wildmenu
set wildmode=longest:list,full

if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[2 q"
endif



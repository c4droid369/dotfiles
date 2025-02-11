" Vi compatible
set nocompatible

" Backspace
set backspace=indent,eol,start

" Tab and space
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Indent
set smartindent

" Faster response
set ttimeout
set ttimeoutlen=100

" Search
set incsearch

" Status line
set laststatus=2
set ruler

" Menu complete
set complete-=i
set wildmenu

" Scroll
set scrolloff=1
set sidescroll=1

" Display
set display+=lastline
set display+=truncate

" Format
set formatoptions+=j

" Auto refresh when file changed
set autoread

" History
set history=10000

" Tab page
set tabpagemax=50

" Viminfo
set viminfo^=!
set viminfofile=~/.config/vim/viminfo

" Session 
set sessionoptions-=options
set viewoptions-=options

" Misc
filetype plugin indent on
syntax enable

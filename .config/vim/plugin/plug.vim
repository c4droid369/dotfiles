let data_dir = expand("$XDG_CONFIG_HOME") . "/vim"
if empty(glob(data_dir . "/autoload/plug.vim"))
    silent execute '!curl -fLo ' . data_dir . "/autoload/plug.vim --create-dirs https://raw.gitmirror.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . "/plugged")

" Repeat operation
Plug 'tpope/vim-repeat'

" Surround edit
Plug 'tpope/vim-surround'

" Comment
Plug 'tpope/vim-commentary'

" Git
Plug 'tpope/vim-fugitive'

" VimScript
Plug 'tpope/vim-scriptease'

" Unix like helper
Plug 'tpope/vim-eunuch'

call plug#end()

" ~/.vimrc

" General settings
syntax on " Turn on syntax highlighting
set t_Co=256 " Set 256 color
color grb256 " Colors
set number " Show line numbers
set noshowmode " Don't show current mode, powerline handles it.
set noswapfile " Don't use swap file
set laststatus=2 " Show Powerline
set hlsearch " Highlight search
set showmatch " Cursor shows matching ) and }
set autoindent " Auto indentation
set nobackup " No *~ backup files
set ignorecase " Ignore case in search
filetype on " Detect file type
filetype indent on " File tyoe specfic indenting

" Pathogen
execute pathogen#infect()

" Supertab top to bottom scroll
let g:SuperTabDefaultCompletionType = "<c-n>"

" Folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" Powerline
python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

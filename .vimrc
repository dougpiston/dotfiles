" ~/.vimrc
" OS X 

syntax on
set t_Co=256
color grb256
set number
set noshowmode 

python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

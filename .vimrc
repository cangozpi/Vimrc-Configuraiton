inoremap jj <ESC>
set hidden
set relativenumber number
set nocompatible
set clipboard=unnamed
set ignorecase smartcase

" Vundle setup below: ---
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins added by me: ---
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'frazrepo/vim-rainbow'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rakr/vim-one'
Plugin 'iamcco/markdown-preview.nvim'
" Plugin 'morhetz/gruvbox'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Vundle setup ends here ---

set encoding=utf-8

"python with virtualenv support
"py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ: 
" 	project_base_dir = os.environ['VIRTUAL_ENV']
" 	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
" 	execfile(activate_this, dict(__file__=activate_this))
" EOF
" 

let python_highlight_all=1
syntax on

let g:rainbow_active = 1

let g:jedi#popup_on_dot = 0

" Vim-airline Colorscheme Theme setup below: ---
set t_Co=256
set background=dark
colorscheme one " change this line to set the current theme
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
" Vim-airline setup ends here ---

" Markdown Preview installation requirement
call mkdp#util#install()

set nocompatible

filetype on
filetype plugin on
filetype indent on

set hidden
set nowrap
set backspace=indent,eol,start

set autoindent
set copyindent
set smartindent

set number

set tabstop=4
set shiftwidth=4
set shiftround

set showmatch
set ignorecase
set smartcase
set smarttab

set ruler

set hlsearch
set incsearch

set termencoding=utf-8
set encoding=utf-8

set nobackup
set noswapfile


if &t_Co >= 256 || has("gui_running")
	colorscheme distinguished
endif

if &t_Co > 2 || has("gui_running")
	syntax on
endif

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

au BufNewFile,BufRead svn-commit*.tmp r /Yell/ci_template/CHASE
au BufNewFile,BufRead svn-commit*.tmp 1delete
au BufNewFile,BufRead svn-commit*.tmp 1put
au BufNewFile,BufRead svn-commit*.tmp 1

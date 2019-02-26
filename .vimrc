set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set rtp+=~/.fzf

set number
set wrap
set linebreak
set nolist
set showbreak=---
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set hlsearch
set ignorecase
set showmatch

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

syntax enable
colorscheme monokain
highlight LineNr ctermfg=grey ctermbg=black

inoremap jj <Esc>
inoremap ` <Esc>
inoremap <C-n> `
noremap ` <Esc>
noremap <C-n> `
noremap ; :

set nocp
filetype plugin on

map <C-p> :FZF<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard=unnamed,autoselect

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'

Plugin 'irrationalistic/vim-tasks'

Plugin 'vim-syntastic/syntastic'

Plugin 'Vollric/YouCompleteMe'

Plugin 'christoomey/vim-tmux-navigator' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set rtp+=~/.fzf

set number
set wrap
set linebreak
set nolist
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set ignorecase
set showmatch

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-p> :FZF<CR>

syntax enable

augroup vimrc_autocommands
  autocmd BufEnter * highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
  autocmd BufEnter * match ExtraWhitespace /\s\+$/
  autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white
  autocmd BufEnter * match OverLength /\%80v.\+/
augroup END


highlight LineNr ctermfg=grey ctermbg=black

colorscheme monokain

inoremap jj <Esc>
inoremap ` <Esc>
inoremap <C-n> `
noremap ` <Esc>
noremap <C-n> `
noremap ; :

set nocp
filetype plugin on
set tabstop=2
set shiftwidth=2

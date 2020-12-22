"Sory's vimrc 2020

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basics
syntax on enable
filetype plugin indent on
set rnu
set hls incsearch 

" Tabs
set tabstop=4 
set softtabstop=4
set shiftwidth=4

set expandtab 
set autoindent
"set smartindent
set backspace=indent,eol,start

set noerrorbells
set scrolloff=7 " Space lines at border when scrolling.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set clipboard=unnamed                                   " Unified clipboard 
set undofile nobackup noswapfile                        " Undo
set fileformat=unix encoding=utf-8 fileencoding=utf-8   " Encoding
set noshowmode                                          " lightline
set foldmethod=indent foldlevel=99                      " code folding
set ignorecase smartcase                                " Ignore case searchs

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins: Plug
source $DOTFILES/.config/nvim/plug-configs/coc.vim
source $DOTFILES/.config/nvim/plug-configs/fzf.vim
source $DOTFILES/.config/nvim/plug-configs/auto-pairs.vim
source $DOTFILES/.config/nvim/plug-configs/vim-airline.vim
source $DOTFILES/.config/nvim/plug-configs/nerd-commenter.vim


" Utilities & Experimental
source $DOTFILES/.config/nvim/other-configs/leader-mappings.vim
source $DOTFILES/.config/nvim/other-configs/wrap-mode.vim
source $DOTFILES/.config/nvim/other-configs/experimental-features.vim
source $DOTFILES/.config/nvim/other-configs/move-lines.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Sory's vimrc 2020


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basics
syntax on enable
filetype plugin on
set rnu
set hls
set incsearch 

" Tabs
set tabstop=4 
set softtabstop=4
set shiftwidth=4

set expandtab 
set autoindent
"set smartindent
"set backspace=indent,eol,start 
set backspace=indent,start

set ignorecase
set smartcase 
"set colorcolumn=80

set noerrorbells
set scrolloff=7 " Space lines at border when scrolling.

" Undo
set undofile
set nobackup
set noswapfile

" Encoding
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" Unified clipboard 
set clipboard=unnamed 

" color scheme
filetype plugin indent on

" lightline
set noshowmode

" code folding
set foldmethod=indent
set foldlevel=99

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
nmap <C-_> <Plug>NERDCommenterToggle<CR>gv

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


" Utilities & Experimental
source $DOTFILES/.config/nvim/other-configs/leader-mappings.vim
source $DOTFILES/.config/nvim/other-configs/wrap-mode.vim
source $DOTFILES/.config/nvim/other-configs/experimental-features.vim
source $DOTFILES/.config/nvim/other-configs/move-lines.vim

"Sory's vimrc 2020

syntax on
set rnu
set hls
set incsearch 

set expandtab 
set noerrorbells
set scrolloff=1 
set shiftwidth=4
set smartcase 
set smartindent
set tabstop=4 softtabstop=4

set undodir=~/.vim/undodir
set undofile
set nobackup
set noswapfile


set clipboard=unnamed 


"call plug#begin('~/.vim/plugged')
"
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'vim-airline/vim-airline'
"
"Plug 'gruvbox-community/gruvbox'
"Plug 'sainnhe/gruvbox-material'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'flazz/vim-colorschemes'
"Plug '/home/mpaulson/personal/vim-be-good'
"
"call plug#end()



let mapleader = " " "Mapea la tecla para ejecutar las combinaciones Leader del command mode.

nnoremap <leader>n :bn <CR>
nnoremap <leader>N :bp <CR>
nnoremap <leader>d :bd <CR>

nnoremap <leader>u :e!<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader><Esc> :wincmd o <CR>

nnoremap <leader>f :Files<CR>
nnoremap <leader><Space> :Buffers<CR>
nnoremap <leader>g :Ag<CR>

nnoremap <leader>? :BLines<CR>
nnoremap <leader>/ :Lines<CR>
nnoremap <leader>h :History<CR>



" Move Lines:

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode. Esto es importante. Estos comandos funcionan en Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

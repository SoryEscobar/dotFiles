"Sory's vimrc 2020


if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif



" Basics
syntax on
set rnu
set hls
set incsearch 
set termguicolors

" Tabs
set tabstop=4 
set softtabstop=4
set expandtab 
set smartindent


set shiftwidth=4
set smartcase 
"set colorcolumn=80


set noerrorbells
set scrolloff=1 

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


" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'

call plug#end()



" Fzf in Vim
"let g:fzf_layout = { 'down': '30%' } "Bottom Half
let g:fzf_layout = { 'window': 'enew' } "Full window




" Leader
let mapleader = " "

" move through buffers
nmap <leader>[ :bp!<CR>
nmap <leader>] :bn!<CR>
nmap <leader>x :bd<CR>

" Undo
nmap <leader>u :e!<CR>

" move through split windows
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader><Esc> :wincmd o <CR>

" FZF
nmap <leader>f :Files<CR>
nmap <leader>F :Filetypes<CR>
nmap <leader>g :GFiles?<CR>
nmap <leader><Space> :Buffers<CR>
nmap <leader>G :Ag<CR>
nmap <leader>? :BLines<CR>
nmap <leader>/ :Lines<CR>
nmap <leader>h :History<CR>
nmap <leader>H :History:<CR>
nmap <leader>C :Commands<CR>
nmap <leader>c :Commits<CR>
nmap <leader>co :Colors<CR>

" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv


" Move Lines:
" Normal mode
nmap <C-j> :m .+1<CR>==
nmap <C-k> :m .-2<CR>==

" Insert mode.
imap <C-j> <ESC>:m .+1<CR>==gi
imap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode.
vmap <C-j> :m '>+1<CR>gv=gv
vmap <C-k> :m '<-2<CR>gv=gv


" auto-pairs
"au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})


" color scheme
filetype plugin indent on

" lightline
set noshowmode

" code folding
set foldmethod=indent
set foldlevel=99


" wrap toggle
setlocal nowrap
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
    if &wrap
        echo "Wrap OFF"
        setlocal nowrap
        set virtualedit=all
        silent! nunmap <buffer> <Up>
        silent! nunmap <buffer> <Down>
        silent! nunmap <buffer> <Home>
        silent! nunmap <buffer> <End>
        silent! iunmap <buffer> <Up>
        silent! iunmap <buffer> <Down>
        silent! iunmap <buffer> <Home>
        silent! iunmap <buffer> <End>
    else
        echo "Wrap ON"
        setlocal wrap linebreak nolist
        set virtualedit=
        setlocal display+=lastline
        noremap  <buffer> <silent> <Up>   gk
        noremap  <buffer> <silent> <Down> gj
        noremap  <buffer> <silent> <Home> g<Home>
        noremap  <buffer> <silent> <End>  g<End>
        inoremap <buffer> <silent> <Up>   <C-o>gk
        inoremap <buffer> <silent> <Down> <C-o>gj
        inoremap <buffer> <silent> <Home> <C-o>g<Home>
        inoremap <buffer> <silent> <End>  <C-o>g<End>
    endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VALIDATE FIRST
" disable autoindent when pasting text
" source: https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

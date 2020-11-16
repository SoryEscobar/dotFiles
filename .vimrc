"Sory's vimrc 2020 

syntax on
set nu
set rnu
set hls
set incsearch "Muestra resultados a medida que se va escribiendo la busqueda.

set expandtab "Cuando se oprime TAB, se convierte en espacios.
set noerrorbells "Elimina los efectos de sonido cuando se llega al final de la linea.
set scrolloff=1 "Numero de lineas que omite vim cuando zt, zb o cuando se avanzan las pantallas def=1
set shiftwidth=4 "Similar al comportamiento de TAB pero cuando se usa auto indentacion.
set smartcase "Case sensitive searchs hasta que se ponen mayusculas. Revisar.
set smartindent "Autoindentacion.
set tabstop=4 softtabstop=4 "Define manualmente los caracteres de la tecla TAB.

set undodir=~/.vim/undodir "Copia los undos en este archivo si se necesitan revertir cambios.
set undofile "Habilita el undodir.
set nobackup "No guarda una copia de backup del archivo cada que se guarda el archivo.
set noswapfile "Evita la creacion de archivos .swp

set clipboard=unnamed "Habilita el clipboard compartido. Si unammed no funciona, probar con unnamedplus.


"set nowrap "Si una linea se sale de la pantalla, se crea una nueva linea. No sigue indefinidamente.
"set guicursor=
"set hidden
"set nohlsearch
"set noshowmatch
"set termguicolors
"set cmdheight=1 " Give more space for displaying messages.
"set spell spelllang=en_us "Idioma del autocorrector


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'tweekmonster/gofmt.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'vim-utils/vim-man'
" Plug 'mbbill/undotree'
" Plug 'sheerun/vim-polyglot'

" " Color Scheme:

 Plug 'gruvbox-community/gruvbox'
 Plug 'sainnhe/gruvbox-material'
 Plug 'phanviet/vim-monokai-pro'
 Plug 'flazz/vim-colorschemes'
 Plug '/home/mpaulson/personal/vim-be-good'

call plug#end()



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


"nnoremap <C-g> :set spelllang=de_de<CR> "Alterna entre lenguajes. Configurar

"nnoremap <C-p> :GFiles<CR>
"nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR> "
"nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv
"nnoremap <Leader>ps :Rg<SPACE>
"nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
"nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
"nnoremap <leader>u :UndotreeShow<CR>


"nnoremap <Leader>+ :vertical resize +5<CR>
"nnoremap <Leader>- :vertical resize -5<CR>
"nnoremap <Leader>rp :resize 100<CR>

"nnoremap <Up> :resize +2<CR>
"nnoremap <Down> :resize -2<CR>
"nnoremap <Left> :vertical resize +2<CR>
"nnoremap <Right> :vertical resize -2<CR>

" Move Lines:
"
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode. Esto es importante. Estos comandos funcionan en Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


"Status-line. Revisar como se usan estas status lines
"set statusline=
"set statusline+=%#IncSearch#
"set statusline+=\ %y
"set statusline+=\ %r
"set statusline+=%#CursorLineNr#
"set statusline+=\ %F
"set statusline+=%= "Right side settings
"set statusline+=%#Search#
"set statusline+=\ %l/%L
"set statusline+=\ [%c]


"TODO:
" com! P ! python3 % "Averiguar bien el uso de este.
" Crear la integracion de autocompletacion coc

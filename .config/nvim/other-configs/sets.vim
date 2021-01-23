" Basics
syntax on enable
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rnu									" Relative numbers
set nu									" Line number at the line of the cursor.
set exrc								" Sources vimrc in the current project dir. 
set guicursor=								" Forces square curor on insert mode
set cursorline								" Enables a line where the cursor is located
set cursorcolumn							" Enables a column where the cursor is located
set incsearch                                           		" search settings
set nohls								" Disable the reminder highlighted search after searchs.
set ignorecase smartcase                                		" Ignore case searchs
set backspace=indent,eol,start                          		" backspace behavior
set clipboard=unnamed                                   		" Unified clipboard 
set undofile nobackup noswapfile undodir=~/.config/nvim/undodir		" Undo history
set fileformat=unix encoding=utf-8 fileencoding=utf-8   		" Encoding
set noshowmode                                          		" lightline
set foldmethod=indent foldlevel=99                      		" code folding
set scrolloff=7 							" Space lines at border when scrolling.
set noerrorbells							" Desables error sounds when reaching at the end of buffer.
set hidden								" Keeps buffers opened when leaving without saving for later resume.
set nowrap								" Avoids wrapping code.
set signcolumn=yes							" Puts a column on the left for the use of linting/git plugins

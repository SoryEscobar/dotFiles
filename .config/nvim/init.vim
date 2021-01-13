"Sory's vimrc 2020


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

Plug 'Konfekt/FastFold' 	" Improved folding engine
Plug 'tmhedberg/SimpylFold' 	" Folding algorithm for python
Plug 'tpope/vim-surround' 	" Surroundings pairs ej: cs + motion + character to surround

Plug 'vim-syntastic/syntastic'  " Syntaxis highlighting
Plug 'tpope/vim-fugitive'	" Git tool for vim
Plug 'dbeniamine/cheat.sh-vim'	" Cheat sheet tool for vim.

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Utilities & Experimental
source $DOTFILES/.config/nvim/other-configs/leader-mappings.vim
source $DOTFILES/.config/nvim/other-configs/sets.vim
source $DOTFILES/.config/nvim/other-configs/wrap-mode.vim
source $DOTFILES/.config/nvim/other-configs/move-lines.vim
source $DOTFILES/.config/nvim/other-configs/experimental-features.vim
source $DOTFILES/.config/nvim/other-configs/python-configs.vim


" Plugins: Plug
source $DOTFILES/.config/nvim/plug-configs/coc.vim
source $DOTFILES/.config/nvim/plug-configs/fzf.vim
source $DOTFILES/.config/nvim/plug-configs/auto-pairs.vim
source $DOTFILES/.config/nvim/plug-configs/vim-airline.vim
source $DOTFILES/.config/nvim/plug-configs/nerd-commenter.vim
source $DOTFILES/.config/nvim/plug-configs/vim-fugitive.vim
source $DOTFILES/.config/nvim/plug-configs/cheat.sh.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

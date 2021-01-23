"Sory's vimrc 2020


" Plugins
call plug#begin('~/.vim/plugged')


""" Fuzzy finder plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


""" Code completion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}


""" Color themes
"Plug 'morhetz/gruvbox'		
Plug 'rakr/vim-one'	


""" Vim status barline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


""" Matching pairs for container characters
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' 	" Surroundings pairs ej: cs + motion + character to surround


""" Commenter plugin
Plug 'preservim/nerdcommenter'


""" Folding plugin
Plug 'Konfekt/FastFold' 	" Improved folding engine
Plug 'tmhedberg/SimpylFold' 	" Folding algorithm for python


""" Syntaxis Highliting
Plug 'vim-syntastic/syntastic'  " Under testing, coc has this feature already.


""" Git plugin
Plug 'tpope/vim-fugitive'	" Git tool for vim
Plug 'airblade/vim-gitgutter'	" Shows git line changes at the left column


""" Wiki inside vim plugin
Plug 'dbeniamine/cheat.sh-vim'	" Cheat sheet tool for vim.


""" Motion Plugin
Plug 'easymotion/vim-easymotion'     " go to any word quickly '\\w', '\\e', '\\b'


""" Home page plugin
Plug 'mhinz/vim-startify'            " A start menu for vim


call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Utilities & Experimental
source $DOTFILES/.config/nvim/other-configs/leader-mappings.vim
source $DOTFILES/.config/nvim/other-configs/sets.vim
source $DOTFILES/.config/nvim/other-configs/colours.vim
source $DOTFILES/.config/nvim/other-configs/move-lines.vim
source $DOTFILES/.config/nvim/other-configs/experimental-features.vim
source $DOTFILES/.config/nvim/other-configs/python-configs.vim
"source $DOTFILES/.config/nvim/other-configs/wrap-mode.vim



" Plugins: Plug
source $DOTFILES/.config/nvim/plug-configs/coc.vim
source $DOTFILES/.config/nvim/plug-configs/fzf.vim
source $DOTFILES/.config/nvim/plug-configs/auto-pairs.vim
source $DOTFILES/.config/nvim/plug-configs/vim-airline.vim
source $DOTFILES/.config/nvim/plug-configs/nerd-commenter.vim
source $DOTFILES/.config/nvim/plug-configs/vim-fugitive.vim
source $DOTFILES/.config/nvim/plug-configs/git-gutter.vim
source $DOTFILES/.config/nvim/plug-configs/easymotion.vim

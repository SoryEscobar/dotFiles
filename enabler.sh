#! /bin/bash
##############################
## Sory's Dot Files Enabler ##
##############################


rm -rf ~/.vim
mkdir -p ~/.config; rm -rf ~/.config/nvim

ln -sf  `pwd`/.bash_profile        ~/.bash_profile 
ln -sf  `pwd`/.alacritty.yml       ~/.alacritty.yml
ln -sf  `pwd`/.tmux.conf           ~/.tmux.conf
ln -sf  `pwd`/.vimrc               ~/.vimrc
ln -sf  `pwd`/.vim                 ~/.vim
ln -sf  `pwd`/.config/nvim         ~/.config/nvim

#Validate this next one
vim -c PlugInstall -c qa

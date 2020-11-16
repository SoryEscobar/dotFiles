#! /bin/bash
##############################
## Sory's Dot Files Enabler ##
##############################



ln -sf  `pwd`/.bash_profile        ~/.bash_profile 
ln -sf  `pwd`/.alacritty.yml       ~/.alacritty.yml
ln -sf  `pwd`/.tmux.conf           ~/.tmux.conf
ln -sf  `pwd`/.vimrc               ~/.vimrc
ln -sf  `pwd`/.vim                 ~/.vim

vim -c PlugInstall -c qa

#! /bin/bash

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session;}


echo "Welcome Sory. Bash profile file enabled."
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "


export LANG=en_US.UTF8


alias ap='vim ~/.alacritty.yml'
alias bp='vim ~/.bash_profile; bp_run ;echo "Bash profile file updated!"'
alias bp_run='. ~/.bash_profile'
alias cc='clear'
alias ee='exit'
alias egrep='egrep --color=auto'
alias f='find'
alias g='egrep -ir'
alias grep='grep --color=auto'
alias hh='cd $HOME'

ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'; alias ll='ls -alh'

alias lt='ll -tr'
alias s='screen'
alias sn='screen -S'
alias sr='screen -r'
alias ta='tt a'
alias tat='tt attach-session -t'
alias tb='vim ~/.tmux.conf'
alias tk='tt kill-session -t'
alias tl='tt ls'
alias tn='tt new -s'
alias tp='vim ~/.tmux.conf'
alias tt='tmux'
alias v='vim'
alias vim='nvim'
alias vimrc='vim  ~/.vimrc'
alias vp='vim  ~/.config/nvim/init.vim'

alias dotFiles='cd ~/dotFiles'

# FZF commands
alias vf='vim "$(fd --type file . | fzf)"'
alias cdd='cd "`fd --type d | fzf`"'


# Opciones por defecto de FZF. Para que funcionen hay que instalar fd, es como un find pero funciona mejor con fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'

export FZF_DEFAULT_COMMAND="fd . ."
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

let g:fzf_preview_window = ['right:50%', 'ctrl-/']


#Line to allow case insensitive tab autocompletion in Bash:
bind 'set completion-ignore-case on'

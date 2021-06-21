#! /bin/bash


echo "Welcome Sory. Bash profile file enabled."
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\]\n\$ "
export LANG=en_US.UTF8
export EDITOR='nvim'
export VISUAL='nvim'


#Add home bin to PATH
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then export PATH=~/bin:$PATH; fi

#Add brew bin to PATH
if [ "$(uname)" == "Linux" ]; then
	if [[ ":$PATH:" != *"linuxbrew"* ]]; then export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH; fi
fi


bind 'set completion-ignore-case on' #Allows case insensitive tab autocompletion


alias vim='nvim'
alias v='vim'

alias ap='v ~/.alacritty.yml'
alias bp='v ~/.bash_profile; bp_run ;echo "Bash profile file updated!"'
alias bp_run='. ~/.bash_profile'
alias cc='clear'
alias ee='exit'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias hh='cd $HOME'

ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'; alias ll='ls -alh'


# TMUX
alias lt='ll -tr'
alias ta='tt a'
alias tat='tt attach-session -t'
alias tb='v ~/.tmux.conf'
alias tk='tt kill-session -t'
alias tl='tt ls'
alias tn='tt new -s'
alias tp='v ~/.tmux.conf'
alias tt='tmux'
alias tmux='TERM=screen-256color tmux'


# dotFiles
export DOTFILES=~/dotFiles
alias dotFiles='cd $DOTFILES'
alias df='dotFiles'
alias vp='v $DOTFILES/.config/nvim/init.vim -c "cd %:h"'


# FZF Default options
#export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'

export FZF_DEFAULT_COMMAND="rg --files"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"


# FZF commands
alias vf='v "$(rg --files | fzf)"' # Vim file
alias cdd='cd "`fd --type d | fzf`"' # Change directory

alias kp="echo \"\$(ps aux | fzf -m)\" | awk '{print \$2}' | xargs kill -9" #Kill process
alias l='ll | fzf' #List with FZF
alias fenv='env | fzf' #Find environmental variables

alias bip='echo $(brew search | fzf -m ) | xargs brew install' # Brew Install Package FZF
alias bipc='echo $(brew search --cask | fzf -m ) | xargs brew install --cask' # Brew Install Cask Package FZF
alias bcp='echo $(brew leaves | fzf -m) | xargs brew uninstall' # Brew Uninstall Package FZF


# cht.sh --> Cheat Sheet 
alias cs='cht.sh --shell'
alias csp='cht.sh --shell python'
alias csb='cht.sh --shell bash'
alias csg='cht.sh --shell git'

# Bash Autocompletion
complete -C aws_completer aws #AWS CLI


if [ -f $(brew --prefix)/etc/bash_completion ]; then
    # bash-completion should be installed first (use HomeBrew)
    # bash-completion enables Docker autocompletion
    . $(brew --prefix)/etc/bash_completion
fi

#Bash autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# Attach an existing tmux session
if [ "$(uname)" != "Linux" ]; then [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session;}; fi

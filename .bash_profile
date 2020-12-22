#! /bin/bash



echo "Welcome Sory. Bash profile file enabled."
#export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\]\n\$ "


alias tapi='cd ~/programing_projects_2020/torretest_api'

export LANG=en_US.UTF8


alias ap='vim ~/.alacritty.yml'
alias bp='vim ~/.bash_profile; bp_run ;echo "Bash profile file updated!"'
alias bp_run='. ~/.bash_profile'
alias cc='clear'
alias ee='exit'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias hh='cd $HOME'

ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'; alias ll='ls -alh'

alias lt='ll -tr'
alias ta='tt a'
alias tat='tt attach-session -t'
alias tb='vim ~/.tmux.conf'
alias tk='tt kill-session -t'
alias tl='tt ls'
alias tn='tt new -s'
alias tp='vim ~/.tmux.conf'
alias tt='tmux'
alias tmux='TERM=screen-256color tmux'
alias v='vim'
alias vim='nvim'
alias vimrc='vim  ~/.vimrc'
alias vp='vim  ~/.config/nvim/init.vim'


export DOTFILES=~/dotFiles
alias dotFiles='cd $DOTFILES'
alias df='dotFiles'

# FZF commands
alias vf='vim "$(rg --files | fzf)"' # Vim file
alias cdd='cd "`fd --type d | fzf`"' # Change directory

alias kp="echo \"\$(ps aux | fzf -m)\" | awk '{print \$2}' | xargs kill -9" #Kill process
alias l='ll | fzf' #List with FZF
alias fenv='env | fzf'

alias bip='echo $(brew search | fzf -m ) | xargs brew install' # Brew Install Package FZF
alias bipc='echo $(brew search --cask | fzf -m ) | xargs brew install --cask' # Brew Install Cask Package FZF
alias bup='echo $(brew leaves | fzf -m) | xargs brew uninstall' # Brew Uninstall Package FZF
# alias bin="echo \"\${PATH//:/\$'\\n'}\"" | fzf | xargs cd'



# FZF Default options
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'

export FZF_DEFAULT_COMMAND="rg --files"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"



#Line to allow case insensitive tab autocompletion in Bash:
bind 'set completion-ignore-case on'



[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session;}

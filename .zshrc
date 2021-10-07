# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Created by newuser for 5.8
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pauls/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias goodnight='systemctl poweroff'
alias katia='echo "katia is awesome <3" | lolcat'
alias startMaria='systemctl start mariadb'

# Prompt themes
#autoload -Uz promptinit
#promptinit

# Custom theme
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'

export PATH="$PATH:~/scripts"

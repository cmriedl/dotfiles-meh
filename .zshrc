# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhist
HISTSIZE=1024
SAVEHIST=1024
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wrwlf/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Python virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh  

# Use clang compiler
export CC=clang
export CXX=clang++

# Terminal title
precmd() { print -Pn "\e]0;%n@%~\a" }

# Terminal prompt
ZLE_RPROMPT_INDENT=0 # prevent useless space after rprompt
PROMPT='%F{green}%n>%f '
RPROMPT='%F{green}<%3d%f'

setopt HIST_IGNORE_DUPS
setopt no_complete_aliases
unsetopt complete_aliases

# Config file bare git repository management
alias myconfig='git --git-dir=$HOME/.myconfig --work-tree=$HOME'
alias myconfig-clone='git clone https://github.com/wrwlf/dotfiles.git $HOME/.myconfig'

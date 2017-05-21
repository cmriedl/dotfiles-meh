# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhist
HISTSIZE=1024
SAVEHIST=0
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wrwlf/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Terminal title
precmd() { print -Pn "\e]0;%n@%~\a" }

# Do not write duplicated commands to the history
setopt HIST_IGNORE_DUPS

# Config file bare git repository management
alias myconfig='/usr/bin/git --git-dir=$HOME/.myconfig --work-tree=$HOME'
alias myconfigclone='/usr/bin/git clone https://github.com/wrwlf/dotfiles.git $HOME/.myconfig'

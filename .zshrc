# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/takuma/.zshrc'

autoload -Uz compinit
compinit -u
# End of lines added by compinstall

#環境変数
export LANG=ja_JP.UTF-8 

#Prompt
PROMPT="%n%% "
RPROMPT="[%~]"
SPROMPT="correct: %R -> %r ? " 

#alias -s
$ lmk() { latexmk -pvc test$1; }
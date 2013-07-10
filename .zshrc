#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias a=aquamacs
alias gcc="gcc -Wall"
alias ls="ls -G"
alias l="ls -G"
alias ll="ls -Gal"
alias ocaml="rlwrap ocaml"
alias emacsd="emacs --daemon"
alias ec="emacsclient -t"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

export CLASSPATH=".:/usr/local/Cellar/antlr/4.0/antlr-4.0-complete.jar:$CLASSPATH"
alias grun='java org.antlr.v4.runtime.misc.TestRig'
alias less='less -x4SRFX'
alias ack='ack --pager=less'


PATH=/usr/local/share/python3.2:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

abbr git hub
abbr gst 'hub status'
abbr gd 'hub diff'
abbr ga 'hub add'
abbr gc 'hub commit'
abbr gp 'hub push'
abbr gpb 'hub push -u origin (hub rev-parse --abbrev-ref HEAD)'
abbr gl 'hub pull'
abbr gb 'hub branch'
abbr gco 'hub checkout'

abbr k 'kubectl'
abbr kgp 'kubectl get pods'
abbr kdp 'kubectl delete pod'
abbr kdesc 'kubectl describe pod'

[ -s "/home/yo/.jabba/jabba.fish" ]; and source "/home/yo/.jabba/jabba.fish"
jabba use zulu@1.11

set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
pyenv init - | source
pyenv virtualenv-init - | source

set -gx PATH $HOME/bin $PATH
set -gx PATH /snap/bin $PATH

set -gx RBENV_ROOT $HOME/.rbenv
set -gx PATH $RBENV_ROOT/bin $PATH
set -gx PATH $RBENV_ROOT/shims $PATH

status --is-interactive; and source (nodenv init -|psub)

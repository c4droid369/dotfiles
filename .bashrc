#
# ~/.bashrc
#

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return ;;
esac

# enable programmable completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

BASH_CONFIG="$HOME/.config/bash"
[ -f "$BASH_CONFIG/aliases.sh" ] && . "$BASH_CONFIG/aliases.sh"
[ -f "$BASH_CONFIG/functions.sh" ] && . "$BASH_CONFIG/functions.sh"

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

HISTCONTROL=ignoreboth
HISTSIZE=20000
HISTFILESIZE=40000

shopt -s histappend
shopt -s autocd
shopt -s globstar
shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

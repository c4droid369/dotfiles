#
# ~/.bash_profile
#

[[ -n "$BASH_VERSION" && -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"

[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/sbin" ] && PATH="$HOME/.local/sbin:$PATH"

export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

[ -d "$XDG_STATE_HOME/bash" ] || mkdir -p "$XDG_STATE_HOME/bash"
export HISTFILE="$XDG_STATE_HOME/bash/history"

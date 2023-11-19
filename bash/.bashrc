if [ -f /etc/bashrc  ]; then
      . /etc/bashrc
fi

export HISTCONTROL=erasedups:ignorespace
shopt -s histappend
export HISTSIZE=100000
export HISTFILESIZE=10000000

# Spara alltid till historien
export PROMPT_COMMAND='history -a'

shopt -s checkwinsize

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER=/usr/bin/firefox

KLOCKA="\[\033[01;31m\][\t]\[\e[m\]\[\033[01;32m\]"
export PS1="$KLOCKA\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\[\033[00m\]\$ "

alias vi="nvim"
alias la="ls -lah $LS_COLOR"
alias ll="ls -lh $LS_COLOR"
alias grep="grep --color"

function cl(){ cd "$@" && la; }

function git() {
    if [[ "$1" = root ]];then
        shift
        local ROOT="$(command git rev-parse --show-toplevel 2> /dev/null || echo -n .)"
        if [[ $# -eq 0 ]];then
            cd "$ROOT"
        else
            (cd "$ROOT" && eval "$@")
        fi
    else
        command git "$@"
    fi
}

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

if [ -f "$HOME/.plantuml.jar" ]; then
    alias plantuml="java -jar $HOME/.plantuml.jar"
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

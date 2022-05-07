HISTCONTROL=ignoreboth
shopt -s histappend
HISTCONTROL=ignorespace
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s checkwinsize

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

export EDITOR='nvim'
export VISUAL='nvim'

export PS1='\[\033[01;31m\][\t]\[\e[m\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\[\033[00m\]\$ '

alias vi="nvim"
alias la='ls -lah $LS_COLOR'

function cl(){ cd "$@" && la; }

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

isWindows=$(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip')
if [[ $isWindows = microsoft ]]; then
    export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
    export DISPLAY="`sed -n 's/nameserver //p' /etc/resolv.conf`:0"
    export DISPLAY=$(ip route|awk '/^default/{print $3}'):0.0
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

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

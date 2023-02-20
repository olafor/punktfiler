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

export EDITOR='lvim'
export VISUAL='lvim'
export BROWSER=/usr/bin/firefox

export PS1='\[\033[01;31m\][\t]\[\e[m\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\[\033[00m\]\$ '

export PATH=$PATH:/local/bin

alias vi="lvim"
alias la='ls -lah $LS_COLOR'
alias ll='ls -lh $LS_COLOR'
alias grep='grep --color'

# Testar doom emacs
export PATH=$PATH:$HOME/.emacs.d/bin

function cl(){ cd "$@" && la; }

possibleMicrosoftString=$(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip')
if [[ $possibleMicrosoftString = microsoft ]]; then
    export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
    export DISPLAY="`sed -n 's/nameserver //p' /etc/resolv.conf`:0"
    export DISPLAY=$(ip route|awk '/^default/{print $3}'):0.0
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


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

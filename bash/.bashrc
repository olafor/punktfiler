HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s checkwinsize

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

alias vi="nvim"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# For x-server in Windows
export DISPLAY=:0.0

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

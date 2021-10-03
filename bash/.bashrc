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

#source /usr/share/git-core/contrib/completion/git-promt.sh

#time,path,branch
#export PS1='\[\033[01;31m\][\t]\[\e[m\]\[\033[01;32m\]\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]`__git_ps1`\[\033[00m\]\$ '

#time,user,host,path
export PS1='\[\033[01;31m\][\t]\[\e[m\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\[\033[00m\]\$ '

#time,path
export PS1='\[\033[01;31m\][\t]\[\e[m\]\[\033[01;32m\]\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\[\033[00m\]\$ '

alias vi="nvim"
alias la='ls -lah $LS_COLOR'

function cl(){ cd "$@" && la; }

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# For x-server in Windows
export DISPLAY=:0.0

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

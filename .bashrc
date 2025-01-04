# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# User specific aliases and functions
export PS1="[\[\e[32m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]:\[\e[34m\]\W\[\e[m\]]\\$ "

alias ls="ls --color"
alias ll="ls -Alrht"
alias ta="tmux a || tmux"
alias vi="vim"
alias gw="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/GUILD\ WARS/Gw.exe &> /dev/null &"

umask 0077

if ! printf $PATH | grep "${HOME}/bin" &> /dev/null; then
    export PATH="${HOME}/bin:${PATH}"
fi

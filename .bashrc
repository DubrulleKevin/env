# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

# User specific aliases and functions
export PS1="[\[\e[32m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]:\[\e[34m\]\W\[\e[m\]]\\$ "

alias ls="ls --color"
alias ll="ls -alrt"
alias ta="tmux a || tmux"
alias vi="vim"
alias gw="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/GUILD\ WARS/Gw.exe &> /dev/null &"

umask 0077

export PATH="${PATH}:${HOME}/bin"

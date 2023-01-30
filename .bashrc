# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PS1="[\[\e[32m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]:\[\e[34m\]\W\[\e[m\]]\\$ "

alias ta="tmux a || tmux"
alias vi="vim"

umask 0077

export PATH="${HOME}/bin:${PATH}"

which tmux &> /dev/null && [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

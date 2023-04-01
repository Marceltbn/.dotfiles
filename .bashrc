#
# ~/.bashrc
#
set -o vi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"
alias ls='ls --color=auto'
alias timer="python projects/timer/timer.py $1"

HISTSIZE=250
HISTFILESIZE=10000000
export HISTTIMEFORMAT='%F %T, '

PS1='[\u@\h \W]\$ '


export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share/nvim/mason/bin
# export LANG=ja_JP.UTF-8

mcd() {
    mkdir "$1" && cd "$1"
}

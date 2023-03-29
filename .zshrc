
eval "$(starship init zsh)" # https://www.starship.rs 


# source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh # yay -S zsh-vi-mode 
# plugins=(
#zsh-vi-mode
# )

alias ls='ls --color=auto'
alias timer="python projects/timer/timer.py $1"
alias sz='source ~/.zshrc'
alias nz='nvim ~/.zshrc'
alias gd='./gd/Godot_v4.0-beta16_linux.x86_64'
alias nc='nvim ~/.config/nvim'
alias vite="npm create vite@latest"
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


export HISTFILE="~/.zsh_history"
HISTSIZE=250
HISTFILESIZE=10000000
export HISTTIMEFORMAT='%F %T, '

export PATH=$PATH:/home/tream/.cargo/bin
export PATH=$PATH:/home/tream/.local/bin
export PATH=$PATH:/home/tream/.local/share/nvim/mason/bin

# Functions
mcd() {
    mkdir "$1" && cd "$1"
}

bindkey -v
# bindkey "n" forward-char

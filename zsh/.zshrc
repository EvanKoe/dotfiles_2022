# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Launch sway once logged in TTY
ps aux > tmpps
VAR=$(cat tmpps | grep sway)

if [ -z "$VAR" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
rm tmpps

# Aliases
alias install="sudo pacman -Sy"
alias isntall="sudo pacman -Sy"
alias up="sudo pacman -Syyu"
alias purge="sudo pacman -Rnds"
alias autoremove="sudo pacman -Rcns \`pacman -Qdtq\`"

alias lv="lvim"
alias c="code . && exit"
alias as="QT_QPA_PLATFORM=xcb _JAVA_AWT_WM_NONREPARENTING=1 android-studio"

alias gcl="git clone"
alias gpl="git pull"
alias gp="git pull && git push"
alias gc="git commit -m"
alias ga="git add"
alias gs="git status"
alias glog="git log --graph"

alias mkea="make"
alias maek="make"
alias mkae="make"
alias amke="make"
alias amek="make"

alias btw="sudo"
alias please="sudo"
alias plz="sudo"
alias suod="sudo"

alias bashrc="sudo vim /etc/bash.bashrc && source /etc/bash.bashrc"
alias zshrc="sudo lvim ~/.zshrc && source ~/.zshrc"

alias debian="sudo docker run -it --rm -v $PWD:/tmp/workspace -w /tmp/workspace debian /bin/bash"

# ENV VARS
export CONFIG="$HOME/.config"
export ADB_MDNS_OPENSCREEN=1

export PATH="$HOME/.local/bin:$PATH"
export PS1="\e[1;31m\W >\e[0m "

# Theme
ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions sudo)

source $ZSH/oh-my-zsh.sh
export RPROMPT=%B%(?."%F{green}%?%f :)"."%F{red}%?%f :(")%b
prompt_context() {}

source /home/ekoehler/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls="exa --icons"
alias l="exa -la --icons"

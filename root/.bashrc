export PS1="\[\033[38;5;8m\]\@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;8m\]-\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;8m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;8m\]\\$\[$(tput sgr0)\]"

export EDITOR="nano"

alias gop='gnome-open'
alias shit='sudo $(history -p \!\!)'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias in='sudo apt-get install'
alias upy='sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y'
alias aremove='sudo apt-get autoremove'
alias add-repo='sudo add-apt-repository '
alias autoremove='sudo apt-get autoremove'
alias remove-repo='sudo add-apt-repository --remove '
alias purge='sudo apt-get purge'
alias shut='sudo shutdown -h now'
alias re='sudo shutdown -r now'
alias upshut='sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y && sudo shutdown -h now'
alias ls='ls --color -p'
alias lsa='ls -A --color -p'
alias say='espeak'
alias github='google-chrome-stable https://github.com'
alias gti='git'
alias edit='editor'
alias tra='cd ~/.local/share/Trash/files/'
alias files='nautilus'
alias rm="trash-rm"
alias mine="cd ~/Games && gnome-open Minecraft.jar"
alias write="figlet"

alias reddit='rtv'
alias askreddit='rtv -s askreddit'
alias tifu='rtv -s TIFU'
alias tfts='rtv -s talesfromtechsupport'
alias sub='rtv -s'


function google { 
     Q="$@"; 
     GOOG_URL='https://www.google.com/search?q=';
     stream=$(exo-open "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||'); 
     echo -e "${stream//\%/\x}"; 
}
    
=() {
    calc="${@//p/+}"
    calc="${calc//x/*}"
    echo "$(($calc))"
}


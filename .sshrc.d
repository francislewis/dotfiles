export PS1="\[\e[00;30m\]\@\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

alias gop='gnome-open'
alias fuck='sudo $(history -p \!\!)'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove'
alias in='sudo apt-get install'
alias say='espeak'

function google { 
     Q="$@"; 
     GOOG_URL='https://www.google.com/search?q=';
     stream=$(exo-open "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||'); 
     echo -e "${stream//\%/\x}"; 
}


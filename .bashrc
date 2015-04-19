export PS1="\[\e[00;30m\]\@\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
export EDITOR="nano"

alias gop='gnome-open'
alias fuck='sudo $(history -p \!\!)'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove'
alias in='sudo apt-get install'
alias upy='sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y'
alias aremove='sudo apt-get autoremove'
alias add-repo='sudo add-apt-repository '
alias remove-repo='sudo add-apt-repository --remove '
alias purge='sudo apt-get purge'
alias shut='sudo shutdown -h now'
alias re='sudo shutdown -r now'
alias upshut='sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo shutdown -h now'
alias ls='ls --color -p'
alias lsa='ls -A --color -p'
alias say='espeak'
alias gti='git'

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

function gt() {
    to="${1}";
    text=$(echo "${*}" | sed -e "s/^.. //" -e "s/[\"'<>]//g");
    res=$(wget -U "Mozilla/5.0" -qO - "http://translate.google.com/translate_a/t?client=t&text=${text}&sl=auto&tl=${to}" | sed 's/\[\[\[\"//' | cut -d \" -f 1);
    echo "${res}";
}    

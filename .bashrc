export PS1="\[\e[00;30m\]\@\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;30m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
export EDITOR="nano"

alias gop='gnome-open'
alias fuck='sudo $(history -p \!\!)'
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

# Wrap sudo to handle aliases and functions
sudo ()
{
local c o t parse

# Parse sudo args
OPTIND=1
while getopts xVhlLvkKsHPSb:p:c:a:u: t; do
if [ "$t" = x ]; then
parse=true
else
o="$o -$t"
[ "$OPTARG" ] && o="$o $OPTARG"
fi
done
shift $(( $OPTIND - 1 ))

# If no arguments are left, it's a simple call to sudo
if [ $# -ge 1 ]; then
c="$1";
shift;
case $(type -t "$c") in
"")
echo No such command "$c"
return 127
;;
alias)
c="$(type "$c"|sed "s/^.* to \`//;s/.$//")"
;;
function)
c=$(type "$c"|sed 1d)";\"$c\""
;;
*)
c="\"$c\""
;;
esac
if [ -n "$parse" ]; then
# Quote the rest once, so it gets processed by bash.
# Done this way so variables can get expanded.
while [ -n "$1" ]; do
c="$c \"$1\""
shift
done
else
# Otherwise, quote the arguments. The echo gets an extra
# space to prevent echo from parsing arguments like -n
# Note the lovely interactions between " and ' ;-)
while [ -n "$1" ]; do
c="$c '$(echo " $1"|sed -e "s/^ //" -e "s/'/'\"'\"'/")'"
shift
done
fi
# Run the command with verbose options
#echo Executing sudo $o -- bash -x -v -c "$c" >&2
command sudo $o bash -xvc "$c"
else
#echo sudo $o >&2
command sudo $o
fi
}


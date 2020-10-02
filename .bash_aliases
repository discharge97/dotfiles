alias shutup='shutdown now'
alias dirop='xdg-open .'
alias pls='sudo'
alias dog='cat'
alias wtf='git blame'
alias status='git status'
alias commit='git commit'
alias push='git push'
alias add='git add'
alias fetch="git fetch"
alias stash="git stash"
alias pull='git pull'
alias la='ls -lhA --group-directories-first -v'
alias afk='xfce4-session-logout --logout && exit'
alias renew-macaddress='pls ip link set wlp3s0 down && pls macchanger -r wlp3s0 && pls ip link set wlp3s0 up'
alias myipc='curl -s https://api.ipify.org | copy'
alias copy='xclip -selection c'
alias bat='bat -p --paging never --theme=base16'
alias back='cd ..'
alias ..='cd ..'
alias brb='sudo shutdown -r now'
alias bashreload="source ~/.bashrc && echo Reloaded!"
alias vi='vim'
alias ping5='ping -c 5'
alias ports='sudo lsof -i -P -n | grep LISTEN'
alias mkcd='mkdir -p "$1"; cd "$1"'
alias mkcd='function _blah(){ mkdir "$1" && cd "$1"; };_blah'

function cd {
	    builtin cd "$@" && la
    }

function myip {
	YELLOW='\033[1;33m'
	WHITE='\033[1;37m'
	NC='\033[0m'
	PUIP=`curl -s https://api.ipify.org`
	LOIP="$(ip route get 1.2 | awk '{print $7}')"
	echo -e "${WHITE}Public  IP: ${YELLOW}$PUIP${NC}"
	echo -e "${WHITE}Private IP: ${YELLOW}$LOIP${NC}"
}

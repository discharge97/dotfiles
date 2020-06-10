alias shutup='shutdown now'
alias dirop='xdg-open .'
alias pls='sudo'
alias dog='cat'
alias wtf='git blame'
alias la='ls -lhA --group-directories-first -v'
alias afk='xfce4-session-logout --logout && exit'
alias renew-macaddress='pls ip link set wlp3s0 down && pls macchanger -r wlp3s0 && pls ip link set wlp3s0 up'
alias myipc='curl -s https://api.ipify.org | copy'
alias copy='xclip -selection c'
alias bat='bat -p --paging never --theme=base16'
alias back='cd ..'
alias brb='sudo shutdown -r now'
alias bashreload="source ~/.bashrc && echo Bash config reloaded"
alias vi='vim'
alias ping='ping -c 5'
alias ports='netstat -tulanp'
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

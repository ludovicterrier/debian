if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

#Partie gauche prompt
export PS1='[%B%n@%m%b][%B%~%b] '

# Partie droite prompt
export RPS1='[%B%T%b]'

autoload -U compinit
compinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BDésolé, pas de résultats pour : %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:cp:*' ignore-line yes

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias free='free -m'
alias iplog='sudo iptables -L INPUT -nvx'
alias la='ls -lah --color=auto'
alias log='sudo tail -f /var/log/apache2/access.log | ccze'
alias whovpn='sudo tail -f /etc/openvpn/openvpn-status.log | ccze'
alias df='df -kTh'
alias ll='ls -lh --group-directories-first --color=auto'


mkcd() {
	if [ $1 = "" ]; then
		echo "Usage: mkcd <dir>"
	else
		mkdir -p $1
		cd $1
	fi
}


setopt correctall
#linux_logo -L debian

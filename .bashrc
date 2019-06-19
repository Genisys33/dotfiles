# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#other
alias neo="neofetch" \
    config="vim ~/.config/i3/config"
alias date="while ((i==i)); do date '+%T %D' | toilet -f term -F border --gay; sleep 1; clear; done" #Thanks LL

#game
alias mines='gnome-mines'

#edit
alias   subl="vim" \
	    nano="vim" \
	    vi="vim" \
	    emacs="vim"

#sys
alias SS="sudo systemctl" \
	diff="diff --color=auto" \
	mkd="mkdir -pv" \
    wak="xautolock -enable" \
    nowak="xautolock -disable" \
    SV="sudo systemctl start mariadb httpd"

#dnf
alias install="sudo dnf install" \
	upgrade="sudo dnf upgrade" \
	search="dnf search" \
	remove="sudo dnf remove" \
	bisou="systemctl poweroff"

###### PROMPT ######
#[user directory]:>
#PS1="[\u \W]:>"

#[user(in red) directory(in green)]:>
PS1="[\[\e[31m\]\u\[\e[m\] \[\e[32m\]\W\[\e[m\]]:>" 

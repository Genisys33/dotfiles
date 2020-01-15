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
    config="vim ~/.config/i3/config"\
    cent="sudo docker run -it --rm centos"
#alias date="while ((i==i)); do date '+%T %D' | toilet -f term -F border --gay; sleep 1; clear; done" #Thanks LL
alias mines='gnome-mines'
#alias friends="vlc -f ~/Musique/Toy\ Story\ -\ Je\ suis\ ton\ ami\ I\ Disney.mp3"

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

#virtu
alias bootusb='sudo qemu-system-x86_64 -m 2048 -enable-kvm -vga virtio -full-screen -hda'\
    bootiso='sudo qemu-system-x86_64 -m 2048 -enable-kvm -vga virtio -full-screen -boot d -cdrom'\
    bootpxe='sudo qemu-system-x86_64 -m 2048 -enable-kvm -vga virtio -full-screen -boot n -net nic -net tap,ifname=virttap,script=no,downscript=no'

###### PROMPT ######
#[user directory]:>
#PS1="[\u \W]:>"

#[user(in red) directory(in green)]:>
PS1="[\[\e[31m\]\u\[\e[m\] \[\e[32m\]\W\[\e[m\]]:> " 

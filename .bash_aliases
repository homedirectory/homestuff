alias cdhd='cd /mnt/hdd'
alias cdxd='cd /mnt/hdd/xd'

alias l='exa --icons'
alias la='exa -a --icons'
alias lla='exa -a -l -g -G --icons'
alias ll='exa -l -g -h -G --icons'

alias wgetdir='wget -r –level=0 -E –ignore-length -x -k -p -erobots=off -np -N'

alias bb='systemctl poweroff'
alias sus='systemctl suspend'

#alias mntusb='sudo mount /dev/sdc1 /mnt/usb'
#alias ejusb='sudo umount /mnt/usb && sudo eject /dev/sdc1'

alias cal='cal -m'

alias i3conf='vim ~/.config/i3/config'

# list open ports
alias lop='ss -tulpn'

alias feh='feh --scale-down --auto-zoom'
alias r='ranger'

# copy to clipboard
alias clipc='xclip -selection clipboard'

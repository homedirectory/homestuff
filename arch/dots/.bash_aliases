alias cdh='cd /mnt/hdd'
alias cdb='cd /mnt/big'
alias cdx='cd /mnt/hdd/xd'

alias l='exa --icons'
alias la='exa -a --icons'
alias lla='exa -a -l -g --icons'
alias ll='exa -l -g --icons'
alias lt='l -T'

alias grep='grep -E --color=auto'
alias grepb='grep -B 8 -A 8'

alias wgetdir='wget -r –level=0 -E –ignore-length -x -k -p -erobots=off -np -N'

alias bb='systemctl poweroff'
alias sus='systemctl suspend'

#alias mntusb='sudo mount /dev/sdc1 /mnt/usb'
#alias ejusb='sudo umount /mnt/usb && sudo eject /dev/sdc1'

alias cal='cal -m'

# list open ports
alias lop='ss -tulpn'

alias feh='feh --scale-down --auto-zoom'
alias r='ranger'

# copy to clipboard
alias c='xclip -selection clipboard'

alias i='less'
alias t='tmux'

alias lg='lazygit'

alias sshon='sudo systemctl start sshd'
alias sshoff='sudo systemctl stop sshd'

alias mnt='sudo mount -o uid=1000,gid=1000,dmask=033,fmask=133'

alias fd='fd -H'

alias web='librewolf'

alias yt-dlpv='yt-dlp --write-info-json --write-thumbnail --write-link --embed-thumbnail --embed-metadata --embed-chapters'
alias yt-dlpa='yt-dlp -x --embed-metadata'

alias cmus='cd /mnt/hdd/xd/music && cmus && cd -'

alias git-ls-tracked='git ls-tree --full-tree -r --name-only HEAD'
alias git-ls-tracked-dirs='git ls-tree --full-tree -r --name-only HEAD | for-each dirname | sort | uniq'

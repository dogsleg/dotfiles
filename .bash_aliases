# Better less
alias less='less -M'

# Better ls
alias ls='ls -h --time-style long-iso'
alias lsa='ls -lAh --time-style long-iso'

# Better ps
alias psc="ps xawf -eo pid,user,cgroup,args"

# Better mkdir
alias mkdir='mkdir -p'

# Better ssh-add
alias ssh-add='ssh-add -c -t 3h'

# Prevent clobbering
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# External IP
alias ipext='curl -w "\n" ipinfo.io/ip'

# Run just 5 pings
alias ping5='ping -c 5'

# Generate a random, 20-character password
alias getpass="openssl rand -base64 20"

# Magit
alias magit='emacsclient -c -n -e "(progn (magit-status) (delete-other-windows))"'

# Display the list of all available ports, their status, and IP
alias myip="ip -br -c a"

# Memory usage
alias mem="ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head"

# pb{copy,paste}
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

# swipl with Java support
alias swipl="LD_LIBRARY_PATH=$(dirname $(find /usr/lib -name libjvm.so)) /usr/bin/swipl"

# Other stuff
alias chromium_remote="chromium --enable-remote-extensions &"
alias dosbox='cd /home/dogsleg/scripts/dos;dosbox'
alias innbox="ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 admin@192.168.1.1"
alias steam_nosb="R600_DEBUG=nosb steam &"

# Handle external disk with cryptsetup
alias ext_mount="sudo cryptsetup luksOpen /dev/sdc1 data; sudo mount /dev/mapper/data /mnt/disk"
alias ext_umount="sync; sudo umount /mnt/disk; sudo cryptsetup luksClose data"

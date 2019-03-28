# Better less
alias less='less -M'

# Better ls
alias lsa='ls --color=auto -la'
alias ls='ls --color=auto'

# Better ps
alias psc="ps xawf -eo pid,user,cgroup,args"

# Better mkdir
alias mkdir='mkdir -p'

# Prevent clobbering
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# External IP
alias ipext='curl ipinfo.io/ip'

# Run just 5 pings
alias ping5='ping -c 5'

# Generate a random, 20-character password
alias getpass="openssl rand -base64 20"

# Magit
alias magit='emacsclient -c -n -e "(progn (magit-status) (delete-other-windows))"'

# Display the list of all available ports, their status, and IP
alias myip="ip -br -c a"

# pb{copy,paste}
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

# Other stuff
alias chromium_remote="chromium --enable-remote-extensions &"
alias dosbox='cd /home/dogsleg/scripts/dos;dosbox'
alias innbox="ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 admin@192.168.1.1"
alias steam_nosb="R600_DEBUG=nosb steam &"
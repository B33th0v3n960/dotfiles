# exa aliases
alias ls='exa -al --color=always --group-directories-first --icons'   # long format --all
alias la='exa -a --color=always --group-directories-first --icons'     # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'     # long format
alias lt='exa -aT --color=always --group-directories-first --icons'    # tree listing
alias l.="exa -a | egrep '^\.'"        

alias cls='clear && neofetch'
alias suspend='systemctl suspend'

# change directors
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias docs="cd ~/Documents/"
alias pics="cd ~/Pictures/"
alias down="cd ~/Downloads/"
alias other="cd ~/Others/"
alias media="cd ~/media/"

# applications
alias view="nsxiv"
alias cat='bat --style header --style snip --style changes --style header'
alias vim="nvim"
alias vi="nvim"

# shorten commands
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias ip='ip -color'
alias grubup="sudo update-grub"


alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'
alias hw='hwinfo --short' 
alias please='sudo'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

alias pacman="sudo pacman"

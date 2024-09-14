#
#   █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
#  ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
#  ███████║██║     ██║███████║███████╗█████╗  ███████╗
#  ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
#  ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
#  ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
#

alias cls='clear && fetch'

# exa aliases
alias ll='exa -al --color=always --group-directories-first --icons --sort=extension --git --git-ignore'   # long format --all
alias lla='exa -al --color=always --group-directories-first --icons --sort=extension --git'   # long format --all
alias la='exa -a --color=always --group-directories-first --icons --sort=extension '     # all files and dirs
alias ls='exa -l --color=always --group-directories-first --icons --sort=extension --git --git-ignore'     # long format
alias lt='exa -aT --color=always --group-directories-first --icons --sort=extension --ignore-glob=".git" --git --git-ignore'    # tree listing
alias l.="exa -a --sort=extension | egrep '^\.'"        

# change directors
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'''

alias desk="cd ~/Desktop/"
alias docs="cd ~/Documents/"
alias pics="cd ~/Pictures/"
alias down="cd ~/Downloads/"
alias trash="cd /.local/share/Trash"
alias dotfile='cd ~/.local/dotfile/'

alias work='cd ~/Desktop/work/'
alias code="cd ~/Desktop/code/"
alias note='cd ~/Documents/notes/'
alias media="cd ~/Media/"

# applications
alias view="imv"
alias cat='bat --style header --style snip --style changes --style header'
alias vim="nvim"
alias vi="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim "
alias ncmpcpp='ncmpcpp -b ~/.config/ncmpcpp/bindings'
alias nc='ncmpcpp -b .config/ncmpcpp/bindings'
alias mixer="pulsemixer"
alias ncdu="ncdu --color dark"
alias blue="bluetoothctl"
alias list="lt --ignore-glob='node_modules|.git'"
alias mpc="mpc --host 127.0.0.1  -p 6600"
alias git-diff='git difftool --tool=nvimdiff'
alias clean='latexmk -c && rm **.synctex.gz && rm -rf **.sta'
alias s="kitty +kitten ssh"
alias nvi="env -u WAYLAND_DISPLAY neovide"
alias yt-music='yt-dlp --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'
alias vi-alias="vim ~/.config/zsh/alias.zsh"
alias fetch="fastfetch -l ~/.config/fastfetch/ascii.txt"


# shorten commands
alias ip='ip -color'
alias install='sudoedit /etc/nixos/modules/packages.nix'
alias update-config='sudo nixos-rebuild switch --flake /etc/nixos#default'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'
alias hw='hwinfo --short' 
alias please='sudo'
alias cleanup='sudo nix-collect-garbage -d'

# rsync aliases 
alias rsync-to-data-dry="rsync --dry-run -rv"

# Archlinux
# alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
# alias grubup="sudo grub-mkconfig -o /boot/grub/grub.cfg"
# alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
# alias pacman="sudo pacman"

# temporary 

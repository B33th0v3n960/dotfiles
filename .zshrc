#
#  ███████╗███████╗██╗  ██╗██████╗  ██████╗
#  ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#    ███╔╝ ███████╗███████║██████╔╝██║     
#   ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#  ███████╗███████║██║  ██║██║  ██║╚██████╗
#  ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bindkey -e

# source /home/b33th0v3n/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ZSH_THEME="robbyrussell"

precmd() {
  source "$HOME/.config/zsh/alias.zsh"
}

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

precmd() {
  source "$HOME/.config/zsh/alias.zsh"
}


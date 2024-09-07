#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='style-1'

## Run
search () {
  rofi \
      -dmenu -p "search on brave:" \
      -theme ${dir}/${theme}.rasi 
}

input="$(search)"
brave search.brave.com/search?q="${input// /+}"&source=desktop

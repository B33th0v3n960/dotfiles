#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='style-1'

## Run
rofi \
    -show filebrowser \
    -theme ${dir}/${theme}.rasi \ 
    

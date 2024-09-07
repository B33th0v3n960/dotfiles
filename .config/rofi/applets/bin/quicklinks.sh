#!/usr/bin/env bash

## Author  : Aditya Shakya (adi1090x)
## Github  : @adi1090x
#
## Applets : Quick Links

# Import Current Theme
source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Theme Elements
prompt='Quick Links'
# mesg="Using '$BROWSER' as web browser"
mesg="Using 'firefox' as web browser"

if [[ ( "$theme" == *'type-1'* ) || ( "$theme" == *'type-3'* ) || ( "$theme" == *'type-5'* ) ]]; then
	list_col='1'
	list_row='6'
elif [[ ( "$theme" == *'type-2'* ) || ( "$theme" == *'type-4'* ) ]]; then
	list_row='2'
	list_col='8'
fi

if [[ ( "$theme" == *'type-1'* ) || ( "$theme" == *'type-5'* ) ]]; then
	efonts="JetBrains Mono Nerd Font 10"
else
	efonts="JetBrains Mono Nerd Font 28"
fi

# Options
layout=`cat ${theme} | grep 'USE_ICON' | cut -d'=' -f2`
if [[ "$layout" == 'NO' ]]; then
	option_1=" Gmail"
	option_2=" Outlook"
	option_3=" Codeberg"
	option_4=" Github"
	option_5=" Reddit"
	option_6=" Youtube"
	option_7=" archlinux"
  option_8=" monkeytype"
else
	option_1=""
	option_2=""
	option_3=""
	option_4=""
	option_5=""
	option_6=""
	option_7=""
  option_8=""
fi

# Rofi CMD
rofi_cmd() {
	rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {str: "";}' \
		-theme-str "element-text {font: \"$efonts\";}" \
		-dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6\n$option_7\n$option_8" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		xdg-open 'https://mail.google.com/'
	elif [[ "$1" == '--opt2' ]]; then
		xdg-open 'https://outlook.office365.com/'
	elif [[ "$1" == '--opt3' ]]; then
		xdg-open 'https://codeberg.org/'
	elif [[ "$1" == '--opt4' ]]; then
		xdg-open 'https://www.github.com/B33th0v3n960/'
	elif [[ "$1" == '--opt5' ]]; then
		xdg-open 'https://www.reddit.com/r/unixporn'
	elif [[ "$1" == '--opt6' ]]; then
		xdg-open 'https://www.youtube.com/'
	elif [[ "$1" == '--opt7' ]]; then
		xdg-open 'https://www.archlinux.org'
	elif [[ "$1" == '--opt8' ]]; then
		xdg-open 'https://monkeytype.com/'
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
    $option_4)
		run_cmd --opt4
        ;;
    $option_5)
		run_cmd --opt5
        ;;
    $option_6)
		run_cmd --opt6
        ;;
    $option_7)
		run_cmd --opt7
        ;;
    $option_8)
		run_cmd --opt8
        ;;
esac

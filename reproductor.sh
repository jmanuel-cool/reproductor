#!/bin/bash
##Requiere Zenity o Yad
##apt install zenity yad
#song=$(yad --width=360 --height=320 --title "Select Folder" --file-selection --directory $HOME)
song=$(zenity --width=360 --height=320 --title "Select Folder" --file-selection --directory $HOME)
##Requiere mpg123 o mpv
#find "$song" -name "*.mp3" | sort --random-sort | head -n 100 | xargs -d '\n' mpg123
find "$song" -name "*.mp3" | sort --random-sort | head -n 100 | xargs -d '\n' mpv --no-audio-display

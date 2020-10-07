#!/bin/bash
#song=$(yad --width=360 --height=320 --title "Select Folder" --file-selection --directory $HOME)
song=$(zenity --width=360 --height=320 --title "Select Folder" --file-selection --directory $HOME)
#find "$song" -name "*.mp3" | sort --random-sort | head -n 100 | xargs -d '\n' mpg123
find "$song" -name "*.mp3" | sort --random-sort | head -n 100 | xargs -d '\n' mpv --no-audio-display

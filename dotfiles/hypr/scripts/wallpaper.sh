#!/bin/bash
pkill hyprpaper || hyprpaper &
directory=~/Pictures/wallpapers

if [ -d "$directory" ]; then
    while true ; do
      random_background=$(ls $directory/*.png | shuf -n 1)

      hyprctl hyprpaper unload all
      hyprctl hyprpaper preload $random_background
      hyprctl hyprpaper wallpaper ", $random_background"
      sleep 60 # Time in seconds
    done
fi

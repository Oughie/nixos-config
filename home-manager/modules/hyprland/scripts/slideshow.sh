#!/bin/bash

# Change the wallpaper every 5 minutes

cd $HOME/Configuration/home-manager/wallpapers/

while true; do
    file="$(ls *.jpg *.png | sort -R | tail -1)"
    swww img "$file" -t=wipe --transition-angle 15
    sleep 300
done

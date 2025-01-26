#!/bin/bash

# Start daemons on startup

SCRIPTS=$HOME/Configuration/home-manager/modules/hyprland/scripts

dunst &
udiskie &
swww-daemon &
waybar &
sh $SCRIPTS/slideshow.sh &
sh $SCRIPTS/power-management.sh &

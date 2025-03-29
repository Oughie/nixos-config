#!/bin/bash

# Start daemons on startup

SCRIPTS=$HOME/Configuration/home-manager/modules/hyprland/scripts

swww-daemon &
waybar &
dunst &
sh $SCRIPTS/slideshow.sh &
sh $SCRIPTS/power-management.sh &

#!/bin/bash

swww-daemon &
waybar &
dunst &
sh ~/Configuration/home-manager/modules/hyprland/scripts/slideshow.sh &
sh ~/Configuration/home-manager/modules/hyprland/scripts/power_management.sh &

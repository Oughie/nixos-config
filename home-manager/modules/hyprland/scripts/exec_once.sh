#!/bin/bash

udiskie &
sh ~/Configuration/home-manager/modules/hyprland/scripts/start.sh &
hyprctl setcursor catppuccin-mocha-pink-cursors 16

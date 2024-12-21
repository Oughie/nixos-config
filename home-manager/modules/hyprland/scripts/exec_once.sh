#!/bin/bash

export PATH=$PATH:/run/current-system/sw/bin/
export PATH=$PATH:$HOME/.nix-profile/bin

udiskie &
sh ~/Configuration/home-manager/modules/hyprland/scripts/start.sh &
hyprctl setcursor catppuccin-mocha-pink-cursors 16

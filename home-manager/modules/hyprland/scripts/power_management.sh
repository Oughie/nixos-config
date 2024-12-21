#!/bin/bash

# Turn off monitor after 5 minutes of inactivity
# Suspend after 10 minutes of inactivity

swayidle -w \
    timeout 300 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    timeout 600 'systemctl suspend-then-hibernate'

#!/bin/bash
  
export PATH=$PATH:/run/current-system/sw/bin/

hyprshot -m region -f Pictures/Screenshots/$(date +%H-%M-%S-%m-%Y).png

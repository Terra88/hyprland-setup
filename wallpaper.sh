#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/wallpaper"

# get currently used wallpaper(s)
CURRENT_WALL=$(hyprctl hyprpaper listactive | awk -F', ' '{print $2}')

# pick a random wallpaper different from current
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# preload and apply
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

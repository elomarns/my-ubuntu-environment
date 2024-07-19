#!/bin/bash

# Directory containing the wallpapers.
WALLPAPER_DIR=$1

# Choose a random wallpaper from the directory.
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the chosen wallpaper as the background using feh.
feh --bg-scale $SELECTED_WALLPAPER

#!/bin/bash

# Directory containing the wallpapers.
WALLPAPER_DIR=$1

# Choose a random wallpaper from the directory.
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" | shuf -n 1)

# Set the chosen wallpaper as the background for i3lock.
i3lock -t -i $SELECTED_WALLPAPER

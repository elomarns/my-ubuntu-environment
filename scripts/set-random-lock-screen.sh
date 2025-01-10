#!/bin/bash

# Directory containing the wallpapers.
WALLPAPER_DIR=$1

# Choose a random wallpaper from the directory. As i3lock doesn't seem to work
# with jpg/jpeg images, only png images are considered.
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" | shuf -n 1)

# Set the chosen wallpaper as the background for i3lock.
i3lock -t -i $SELECTED_WALLPAPER

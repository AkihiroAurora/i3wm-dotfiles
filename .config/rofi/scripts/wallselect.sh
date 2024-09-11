#!/bin/bash

# Set the directory where the wallpapers are stored
wallpaper_dir="$HOME/Pictures/backgrounds"

# Get the list of wallpapers in the directory
wallpapers=($(ls "$wallpaper_dir"))

# Format the list of wallpapers for Rofi
wallpaper_list=$(printf "%s\n" "${wallpapers[@]}")

# Use Rofi to select a wallpaper
selected_wallpaper=$(echo -e "$wallpaper_list" | rofi -dmenu -p "Select a wallpaper:")

# Get the full path of the selected wallpaper
wallpaper_path="$wallpaper_dir/$selected_wallpaper"

# Update the feh with the new wallpaper
feh --bg-scale $wallpaper_path

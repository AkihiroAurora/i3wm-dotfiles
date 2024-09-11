#!/bin/bash

# Specify the directory of wallpaprs
dir=~/Pictures/backgrounds

# Randomly choose a file in the wallpaper directory
image=`/bin/ls -1 "$dir" | sort --random-sort | head -1`

# Convert the selected file to full path
path=`readlink --canonicalize "$dir/$image"`

# Set the file choosen as image
feh --bg-scale $path

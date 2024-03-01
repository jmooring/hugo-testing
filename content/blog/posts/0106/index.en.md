---
type: post
date: "2011-07-20T00:00:00Z"
title: "Gnome/Unity random wallpaper script"
tags:
    - Gnome
    - Linux
    - Ubuntu
    - Unity
    - wallpaper
    - how-to
    - tips & tricks
---

**Note:** this script will not work in GNOME 3 and Ubuntu 11.10; for these systems you have to use [the new version](0122).

This bash script picks up a random image file (.jpg, .jpeg or .png) from the predefined directory and sets it as wallpaper.

<!--more-->

One of the tricky things was to make it work when started from cron. The problem was with the `DBUS_SESSION_BUS_ADDRESS` variable (required by `gconftool-2`) not set in that case, so there's an extra piece of code that takes care of this variable.

The code has been tested with all Ubuntu versions up to 11.04 Natty Narwhal. It works with both Gnome and Unity.

The only thing to setup in the below script is the path to image files in `dir_wallpapers`.

```bash
#!/bin/bash
#================================================================================
# Description
#   Script to set a random wallpaper in Gnome/Unity
# Synopsis
#   rotate-wallpaper
# Author
#   Dmitry Kann, http://yktoo.com/
# License
#   Public domain
#================================================================================
# Setup vars
dir_wallpapers="$HOME/Pictures/"  # Path to wallpaper directory

# Exports DBUS variable which is not set when called from cron session
export_variables() {
user=$(whoami)
pid=$(pgrep -u $user gnome-panel)
for dbusenv in $pid; do
  DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$pid/environ | sed -e 's/DBUS_SESSION_BUS_ADDRESS=//')
  data="DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS"
  eval "export $data"
done
}

# Fill array with picture files (replace spaces with colons to fool the array)
files=( $(find "$dir_wallpapers" -type f \( -iname '*.jpeg' -o -iname '*.jpg' -o -iname '*.png' \) | sed s/' '/':'/g) )
# Get number of members in the array
N=${#files[@]}
# Randomize N
((N=RANDOM%N))
# Get the normal file name (change colons back to spaces)
file=${files[$N]//:/ }
# Change desktop wallpaper
export_variables
gconftool-2 --type string --set /desktop/gnome/background/picture_filename "$file"
```

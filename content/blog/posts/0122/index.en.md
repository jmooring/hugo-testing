---
type: post
date: "2011-10-14T00:00:00Z"
title: "Ubuntu/GNOME 3 random wallpaper script"
tags:
    - Gnome
    - Linux
    - Ubuntu
    - Unity
    - wallpaper
    - yktools
    - how-to
    - tips & tricks
software: yktools
---

This bash script picks up a random image file (.jpg, .jpeg or .png) from the predefined directory and sets it as wallpaper.

The [previous version](0106) of the script worked fine with GNOME 2 and Ubuntu 11.04 (and earlier), but after `GConf` backend was changed to `dconf` in GNOME 3, it stopped working.

<!--more-->

The new version works with both GNOME 3 and Ubuntu 11.10 Oneiric Ocelot.

The only thing to setup in the below script is the path to image files in `dir_wallpapers`.

## Source code

You can download the latest version on [script page](/software/yktools) on my website.

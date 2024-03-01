---
type: post
date: "2020-07-31T19:05:49+02:00"
title: "0.13"
tags:
    - Ymuse
    - software
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Ubuntu
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wlfb8v23knjqaefztiwg.png"
series: ymuse
---

A new version of [Ymuse](/software/ymuse) **0.13**, a Music Player Daemon client, has been released.

I haven't blogged about it since the [0.7 release](0748), so here's a brief summary of what's changed:

<!--more-->

* **0.13**:
    * Add "Show album/artist/genre in Library" function to Queue
    * Scroll to the selected row in library and Preferences ⇒ Columns
    * Select top item in Streams by default
* **0.12**:
    * Add Unix domain socket connectivity ([#10](https://github.com/yktoo/ymuse/issues/10)).
* **0.11**:
    * Expose Bitrate and Format attributes to current track ([#6](https://github.com/yktoo/ymuse/issues/6))
    * Fix: too frequent reconnection attempts ([#9](https://github.com/yktoo/ymuse/issues/9))
    * Redesign MPD Info dialog; add Decoder Plugins info
    * Save and restore selected library path
    * Use MPD_HOST and MPD_PORT environment vars for connection defaults ([#8](https://github.com/yktoo/ymuse/issues/6))
* **0.10**:
    * Add the `..` (level up) element to Library
    * Select element being left when going back in Library
    * Japanese translation
* **0.9**:
    * Implement forced file rescanning
    * Improve connection management
    * Localise player template
    * Library: don't collapse toolbar to avoid hiding search button
    * Speed up display update on MPD connect
* **0.8**:
    * Add localisation support
    * Add Russian, Dutch translations
    * Add browsing by genre, artist, album function
    * Add context menu/items
    * Localise durations, too
    * Optimise queue loading with large lists
    * Recover SVGO-broken icons
    * Remove Playlists tab in favour of section in Library

Moreover, a [snap package](https://snapcraft.io/ymuse) for Ymuse is available now.

## Video tour

I've recorded a short video that demonstrates program's features:

{{< youtube "FuO7QWOaS1A" >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

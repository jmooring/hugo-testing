---
type: post
date: "2020-08-13T18:18:31+02:00"
title: "0.14"
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

Strictly according to the (nonexistent) schedule the next version of [Ymuse](/software/ymuse)—**0.14**—has been released. **Ymuse** is a desktop client application for the [Music Player Daemon](https://www.musicpd.org/), which I [posted](0748) about a while ago.

What's new in this version?

<!--more-->

## Album art

The most noteworthy change is the album art display in the player, next to the current track's title:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1597326567/blog/vx7vpdn1lrskop110ts6.png" "Ymuse 0.14: album art display." >}}

It's on by default and can be disabled in the program's Preferences.

The album art is fetched with a special MPD command, which I had to [implement](https://github.com/fhs/gompd/pull/60) myself in the `gompd` library (and also [fix](https://github.com/gotk3/gotk3/pull/634) a bug in `gotk3` along the way).

MPD, in its turn, [looks](https://www.musicpd.org/doc/html/protocol.html#the-music-database) for the cover art in the same directory as the audio file, in the following files:

* `cover.png`
* `cover.jpg`
* `cover.tiff`
* `cover.bmp`

## Delay in Preferences

I've also added a delay before the player's settings are applied. You'll now see the changed applied only after one second, and not after every letter or click:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/glusxmlp663hpfseq0py.gif" "Delay in applying Ymuse's preferences." >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

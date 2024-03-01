---
type: post
date: "2022-05-29T12:33:13+02:00"
title: "0.20 Volodymyr"
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
image: "https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png"
series: ymuse
software: ymuse
---

[Ymuse](/software/ymuse) version **0.20 Volodymyr** is released.

Ymuse is a client application for the [Music Player Daemon](https://www.musicpd.org/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png" "Ymuse using a light and a dark theme." >}}

## What's new

<!--more-->

* **MPD Outputs dialog**\
  It is now possible to activate and deactivate MPD audio outputs using a dedicated dialog ([#44](https://github.com/yktoo/ymuse/issues/44)):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/eunuwzc30u8xtvybk6nw.png" "Ymuse MPD Outputs dialog." >}}
  The dialog can be invoked via the main app menu (under the "sandwich" button in the header) or using the <kbd>Ctrl</kbd><kbd>O</kbd> keyboard shortcut.

  Available audio outputs are set up in the standard way in [MPD config file](https://mpd.readthedocs.io/en/stable/user.html#configuring-audio-outputs).

* Fixed a bug causing the **Add to playlist** library function appending tracks to a wrong playlist ([#51](https://github.com/yktoo/ymuse/issues/51)).

## Feature tour video

Here's a brief feature video of a [previous version](0799):

{{< youtube "h0g2gk5DM8s" >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

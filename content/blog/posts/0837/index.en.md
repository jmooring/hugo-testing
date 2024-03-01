---
type: post
date: "2022-08-19T18:50:57+02:00"
title: "0.21 Wayfarer"
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
software: ymuse
---

[Ymuse](/software/ymuse) version **0.21 Wayfarer** is released.

Ymuse is a client application for the [Music Player Daemon](https://www.musicpd.org/).

## What's new

<!--more-->

* Added long-awaited support for album artwork images embedded in audio files ([#52](https://github.com/yktoo/ymuse/issues/52), thanks [@imsamuka](https://github.com/imsamuka)!). Previous versions of Ymuse could only load album art from a `cover.*` image file residing in the same directory as the audio file.
* Added album art image size setting:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1660928665/blog/jeq6qyqsmbvor3uc63d1.png" "Album art image size setting." >}}
* The album art image maintains its aspect ratio now ([#59](https://github.com/yktoo/ymuse/issues/59)).
* Added current track seek feature by the specified duration in seconds (**5** by default) using the <kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>←</kbd> and <kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>→</kbd> keyboard shortcuts ([#56](https://github.com/yktoo/ymuse/issues/56)).

## Feature tour video

Here's a brief feature video of a [previous version](0799):

{{< youtube "h0g2gk5DM8s" >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

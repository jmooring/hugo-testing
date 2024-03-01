---
type: post
date: "2021-11-24T15:02:06+01:00"
title: "0.18"
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

[Ymuse](/software/ymuse) version **0.18** is released.

Ymuse is a client application for the [Music Player Daemon](https://www.musicpd.org/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png" "Ymuse using a light and a dark theme." >}}

## What's new

<!--more-->

When it comes to visible changes, there's only one in this version: the Preferences dialog has got a new tab called *Automation*. It allows you to configure actions to execute after the play queue has been replaced — for instance, after double-clicking a playlist in the Library:

* Switch to the Queue tab (enabled by default);
* Start playback.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1637762165/blog/m4q41rd2klmfrcdft7nx.png" "The Automation tab." >}}

There is also a couple of notable changes under the hood:

* The code is updated to use Go 1.17 and the latest `gotk3`/`gompd` versions; the minimum supported GTK version is now **3.22**.
* The project's build pipeline has migrated off Travis CI (because of their annoying policy changes) to [GitHub Actions](https://github.com/yktoo/ymuse/actions). So far so good, the only downside I see is that building a snap package takes up to an hour now.

## Feature tour video

{{< youtube "h0g2gk5DM8s" >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

---
type: post
date: "2020-09-06T15:31:14+02:00"
title: "0.15"
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

A new, bugfix, release of [Ymuse](/software/ymuse) **0.15** is out.

**Ymuse** is a desktop client application for the [Music Player Daemon](https://www.musicpd.org/).

<!--more-->

The 0.15 release fixes a library browsing [bug](https://github.com/yktoo/ymuse/issues/11) that prevented the application from correctly displaying files in a folder with a single quote (`'`) in the name.

In order to resolve that I had to submit [another patch](https://github.com/fhs/gompd/pull/61) to the `gompd` project.

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

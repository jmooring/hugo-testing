---
type: post
date: "2021-02-09T09:05:29+01:00"
title: "0.16"
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

A new version of [Ymuse](/software/ymuse) **0.16** has been released.

**Ymuse** is a desktop client application for the [Music Player Daemon](https://www.musicpd.org/).

This release fixes a couple of bugs and introduces ~~new ones~~ some new features.

## What's new

<!--more-->

* Volume control button/slider are added ([#20](https://github.com/yktoo/ymuse/issues/20)):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/svlzlewuinrronoii34u.gif" "MPD volume control in Ymuse." >}}
* New setting for toggling the visibility of the Queue toolbar ([#23](https://github.com/yktoo/ymuse/issues/23)).
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fogws1tmmgdmdqmo3eab.gif" "Queue toolbar setting." >}}
* Fixed a bug causing the CPU to max out and flooding the app logs after MPD connection is lost ([#26](https://github.com/yktoo/ymuse/issues/26), [#28](https://github.com/yktoo/ymuse/issues/28)).
* Fixed the queue selection being reset on a right click ([#21](https://github.com/yktoo/ymuse/issues/21)).
* Upgraded the Go compiler (1.15.8) and the dependencies `gompd` (2.2.0), `gotk3` (0.5.2), which should hopefully benefit the stability ([#27](https://github.com/yktoo/ymuse/issues/27)).

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

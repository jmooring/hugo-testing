---
type: post
date: "2023-10-04T17:39:19+02:00"
title: "0.22 Xylophone"
tags:
    - Ymuse
    - software
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Ubuntu
    - Debian
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/v1696435031/blog/kk4yvcrmub7dmqq25tc7.png"
series: ymuse
software: ymuse
---

[Ymuse](/software/ymuse) version **0.22 Xylophone** is released.

**Ymuse** is a snappy and convenient [Music Player Daemon](https://www.musicpd.org/) client application.

## Availability

First off, a great news: Ymuse is now officially available in [Ubuntu repositories](https://packages.ubuntu.com/search?suite=all&searchon=names&keywords=ymuse) (starting from **23.04** [Lunar Lobster](https://packages.ubuntu.com/lunar/ymuse)) and [Debian](https://packages.debian.org/source/testing/ymuse) (in Testing at the time of writing).

It's also present in the [Snap store](https://snapcraft.io/ymuse), [Flathub](https://flathub.org/apps/com.yktoo.ymuse), and [AUR](https://aur.archlinux.org/packages/ymuse).

## What's new

New version highlights:

<!--more-->

* A new muse icon ([#79](https://github.com/yktoo/ymuse/issues/79))
* Support for drag-n-drop in the Queue ([#34](https://github.com/yktoo/ymuse/issues/34))
* Support for single-track repeat ([#76](https://github.com/yktoo/ymuse/issues/76))
* German translation ([#68](https://github.com/yktoo/ymuse/issues/68))
* Allow adding/replacing of all tracks in the Library from the Files context menu ([#69](https://github.com/yktoo/ymuse/issues/69))
* Remove warnings about non-existent or empty config file ([#70](https://github.com/yktoo/ymuse/issues/70))

Now a bit more details on the above.

### Icon

[Jeppe Zapp](https://github.com/mrzapp) has generously offered his help with designing a new application icon (seemingly, he wasn't so much into the [martini glass](https://res.cloudinary.com/yktoo/image/upload/t_s640/blog/wlfb8v23knjqaefztiwg.png) metaphor), one actually featuring a muse:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1696435031/blog/kk4yvcrmub7dmqq25tc7.png" "Ymuse's muse." >}}

The icon also unambiguously hints at the author by the means of the letter `Y`.

### Drag-n-drop

It used to be a common request that Ymuse should support drag-n-drop. Its implementation was, however, a bit tricky due to the lack of proper documentation on the matter, especially when it comes to the combination of GTK, Go, and gotk3.

Fortunately, [Willem 14mRh4X0r](https://github.com/14mRh4X0r) took the initiative and [implemented](https://github.com/yktoo/ymuse/pull/80) a simplified drag-n-drop version that supports single tracks only. Which is decidedly better than nothing:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1696433931/blog/holgvagxkhixsyd0wiwr.gif" "Drag-n-drop in Ymuse in action." "border shadow" >}}

As for dragging multiple tracks, Ymuse is still waiting for a hero (or my free time).

### Single-track repeat

Also being a commonplace feature for an audio player, single-track repeat leverages the two separate MPD options: `repeat` and `single`. To keep the UI plain and simple, I decided to combine them into one by adding a third state to the Repeat button:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1696433931/blog/jqglm5zj1xt3s3kqe2dc.gif" "Repeat **all** or **single**." "border shadow" >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

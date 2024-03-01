---
type: post
date: "2020-06-06T15:50:25+02:00"
title: "2.3.4"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Eoan Ermine
    - Focal Fossa
    - Linux
    - software
    - sound
    - indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tz9luieerecw7gkumsoi.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

A minor update to [Sound Switcher Indicator](/software/sound-switcher-indicator) — version **2.3.4** — has been released (as well as a few intermediate ones).

What's changed since the previous [2.3.0 release](0597):

<!--more-->

* **2.3.4**
  * Symbolic icons fixed ([#88](https://github.com/yktoo/indicator-sound-switcher/issues/88)).
  * Removed the exterior border around the notebook in the Preferences dialog.
* **2.3.3**
  * Fixed SVG icons broken in **2.3.1** ([#87](https://github.com/yktoo/indicator-sound-switcher/issues/87)). As it turned out, they've been garbled by the SVGO optimiser, or, to be precise, its *convertPathData* plugin.
  * Translation updates: Russian, Dutch.
* **2.3.2**
  * Fix to a stubborn localisation issue, which prevented translation files from being packaged ([#82](https://github.com/yktoo/indicator-sound-switcher/issues/82)).
* **2.3.1**
  * Translation updates: Russian, Dutch.
  * Dark and light icons have been replaced by a single symbolic one ([#80](https://github.com/yktoo/indicator-sound-switcher/issues/80)).

## Preferences dialog

In the Preferences dialog the exterior border around the notebook has been removed, which made it look a bit better (borrowed from *Nautilus*):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ywpgistj83d0fdwyug3h.png" "Sound Switcher Indicator's Preferences dialog." >}}

## Ubuntu support

My [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) provides packages for Ubuntu **18.04 Bionic Beaver**, **19.10 Eoan Ermine**, and **20.04 Focal Fossa**. Bug reports are welcome at the [usual address](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Installation

To install or update the application, please follow the steps described in the [Installation section](/software/sound-switcher-indicator/installation).

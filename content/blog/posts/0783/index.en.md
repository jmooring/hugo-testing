---
type: post
date: "2021-06-18T16:25:37+02:00"
title: "2.3.6"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Focal Fossa
    - Groovy Gorilla
    - Hirsute Hippo
    - Linux
    - software
    - sound
    - indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tz9luieerecw7gkumsoi.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

The version **2.3.6** of the [Sound Switcher Indicator](/software/sound-switcher-indicator) has been released, featuring improved keyboard shortcuts and device display.

<!--more-->

## What's new

There are the following two notable improvements in this version.

* You can now assign the same keyboard shortcuts to different device ports ([#106](https://github.com/yktoo/indicator-sound-switcher/issues/106)). If there's more than one port assigned to the same key combination, pressing this combination will cycle through each of them, in order.
* The device list in the Preferences dialog shows the vendor and the product name now ([#105](https://github.com/yktoo/indicator-sound-switcher/issues/105)), which should make distinguishing similar devices easier:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lu73q8ojuvfso6oenuvq.png" "The Preferences dialog." >}}

## Ubuntu support in the PPA

My [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) provides packages for Ubuntu **18.04 Bionic Beaver**, **20.04 Focal Fossa**, **20.10 Groovy Gorilla**, and **21.04 Hirsute Hippo**. Bug reports are welcome at the [usual address](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Installation

To install or update the application, please follow the steps described in the [Installation section](/software/sound-switcher-indicator/installation).

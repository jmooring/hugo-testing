---
type: post
date: "2020-02-04T20:34:34+01:00"
title: "2.3.0"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Eoan Ermine
    - Linux
    - software
    - sound
    - indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wlsrdmzkpaw2361u3qyb.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

A new version of [Sound Switcher Indicator](/software/sound-switcher-indicator) — **2.3.0** — has just been released.

This version finally adds a frequently-[requested](https://github.com/yktoo/indicator-sound-switcher/issues/38) feature: the ability of mapping global keyboard shortcuts to input and output *ports*.

<!--more-->

## Preferences dialog

The Preferences dialog has got a new button under *Port settings*, which can be used to assign or reassign a key combination for this port.

When you click it, a key selection dialog will be presented, which you can also close with <kbd>Backspace</kbd> to remove a shortcut or with <kbd>Escape</kbd> to cancel.

Here's what it looks like:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tb1ostp0z4dmsgqybrhv.gif" "Global keyboard shortcut selection in the Preference dialog of Sound Switcher Indicator." >}}

In the case the chosen key combo is already mapped to another port, it will be cleared there and remapped to the current one.

## Ubuntu support

My PPA provides packages for Ubuntu **18.04 Bionic**, **19.04 Disco**, and **19.10 Eoan**. Bug reports are welcome at the [usual address](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Installation

To install or update the application, please follow the steps described in the [Installation section](/software/sound-switcher-indicator/installation).

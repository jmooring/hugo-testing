---
type: post
date: "2016-09-25T00:00:00Z"
title: "2.0.1"
series: sound-switcher-indicator
tags:
    - Gnome Control Center
    - indicator
    - PulseAudio
    - Python
    - Python 3
    - sound
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
    - Utopic Unicorn
image: "https://res.cloudinary.com/yktoo/image/upload/blog/fea8e5qk2bg91390.png"
software: sound-switcher-indicator
---

It's been more than two years since the last release of the [Sound Switcher Indicator](/software/sound-switcher-indicator) (1.2.2). During this period I've been bombarded with [requests](https://github.com/yktoo/indicator-sound-switcher/issues/3) to allow the indicator to switch device profiles, because most sound cards cannot be otherwise switched to their digital ports, like S/PDIF and HDMI.

So today I proudly present **Sound Switcher Indicator 2.0.1**, which *finally* supports profile switching:

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fea8e5qk2bg91390.png" "Sound Switcher Indicator 2.0.1." >}}

## What's changed

Visually, not much:

* The indicator menu now lists all available ports on all devices, and shows the *Device description* followed by *Port name*.
* The menu takes port availability into account (for example, when you unplug your headphones, the `Headphones` port will disappear from the menu and, probably, be replaced with `Speakers`).

Under the hood, however, almost everything is different:

* The code has been migrated to Python 3.
* The application is now device- and profile-aware. If the port you're switching to is not available in the current profile, it will pick the most appropriate supported one and switch the device onto it.
* Support for GTK+2 and Ubuntu prior to 14.10 Utopic has been dropped.
* It requires at least PulseAudio v4.0.

The above required a lot of reading of [PulseAudio API](https://freedesktop.org/software/pulseaudio/doxygen/) and digging into the source code of [Gnome Control Center](https://github.com/GNOME/gnome-control-center) to understand how it handles devices and profiles. (On a side note: I think developing this pseudo-object-oriented code in C must be a real nightmare. There's huge room for memory leaks!)

## Installation

You can install or update the application, as usual, via my Launchpad PPA, see the [installation manual](/software/sound-switcher-indicator).

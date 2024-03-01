---
type: post
date: "2022-05-14T10:27:01+02:00"
title: "2.3.8"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Focal Fossa
    - Hirsute Hippo
    - Impish Indri
    - Jammy Jellyfish
    - Linux
    - software
    - sound
    - indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tz9luieerecw7gkumsoi.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

A new bugfix release **2.3.8** of the [Sound Switcher Indicator](/software/sound-switcher-indicator) is out.

## What's new

This version fixes two serious issues in the indicator.

<!--more-->

* The app could handle stream switching incorrectly in a case the sound card had multiple *sources* or *sinks* (as PulseAudio calls them). In certain cases that would even render the switcher completely dysfunctional ([#107](https://github.com/yktoo/indicator-sound-switcher/issues/107)).
* Pressing a shortcut bound to a port on an offline device would cause the indicator to try to switch to that non-existent device ([#118](https://github.com/yktoo/indicator-sound-switcher/issues/118)).

Resolving the above, particularly the first issue, took me hours of digging into the code and experimenting with PulseAudio profiles. From which I can conclude PulseAudio's profile support is far from flawless yet. Sometimes switching profiles a few times causes the sound server to totally break down, which you can only mend by restarting it (`pulseaudio -k`).

## And…

And, last but not least, we have **300** stars [on GitHub](https://github.com/yktoo/indicator-sound-switcher) and **2100**+ snap package users!

## Ubuntu support in the PPA

My [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) provides packages for Ubuntu **18.04 Bionic Beaver**, **20.04 Focal Fossa**, **21.04 Hirsute Hippo**, **21.10 Impish Indri**, and **22.04 Jammy Jellyfish**. Bug reports are welcome at the [usual address](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Installation

To install or update the application, please follow the steps described in the [Installation section](/software/sound-switcher-indicator/installation).

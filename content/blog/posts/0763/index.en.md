---
type: post
date: "2020-12-28T11:10:39+01:00"
title: "2.3.5.2 + snap package"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Focal Fossa
    - Groovy Gorilla
    - Linux
    - software
    - sound
    - indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/gsychzzjqvcbxytpn9ff.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

I've released a minor [Sound Switcher Indicator](/software/sound-switcher-indicator) update, the version **2.3.5.2**.

<!--more-->

There's no change in the present functionality of the application.

My main drive to make a new release was introducing a {{< wiki "Snap_(package_manager)" "en" "snap package" >}} for the indicator, which was a long-requested feature.

## Snap package

Dmitry Maximov ([eth481642](https://github.com/eth481642)) helped to get things going. He made an initial `snapcraft` assembly, which I'm grateful for.

I do, however, have some reservations about the use of snaps for such applications. By definition, every snap contains all parts required to run the application. In this case it means packaging Python and a few dozens of libraries alongside the source code, which results in an archive as big as **45 MB**.

Just for your reference, a [snap package](https://snapcraft.io/ymuse) for [Ymuse](/software/ymuse), a full-blown natively-compiled app, is only **2.5 MB** in size.

But okay, there was a demand for a snap so there is one now. **Sound Switcher Indicator** can be installed directly from the [Snap Store](https://snapcraft.io/indicator-sound-switcher):

{{< snapcraft-card "indicator-sound-switcher" >}}

## Autolaunch

The snap format imposes a lot of restrictions on what the app can do. Among other things, it appears impossible to make the app start automatically for all users—as opposed to a conventional `deb` package.

This is mitigated by making an autostart link during the first run of the indicator, which *has to happen manually*. After that the indicator will start automatically after each login.

## Ubuntu support in the PPA

My [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) provides packages for Ubuntu **18.04 Bionic Beaver**, **20.04 Focal Fossa**, and **20.10 Groovy Gorilla**. Bug reports are welcome at the [usual address](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Installation

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ueoiwjjzqsrkv3i0vmr8.gif" "Installing Sound Switcher Indicator from a snap package." >}}

To install or update the application, please follow the steps described in the [Installation section](/software/sound-switcher-indicator/installation).

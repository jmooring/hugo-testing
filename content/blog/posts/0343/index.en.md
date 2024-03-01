---
type: post
date: "2019-01-13T00:00:00Z"
title: "2.2.0"
series: sound-switcher-indicator
tags:
    - indicator
    - sound
    - software
    - Sound Switcher Indicator
    - Ubuntu
image: "https://res.cloudinary.com/yktoo/image/upload/blog/9revw9yiv80r1938.png"
software: sound-switcher-indicator
---

It's time to fulfil my [promise](0342), so please meet [Sound Switcher Indicator](/software/sound-switcher-indicator) version **2.2.0**.

<!--more-->

## What's new

There are the following two major differences with the previous release:

* Support for virtual devices ([#48](https://github.com/yktoo/indicator-sound-switcher/issues/48)) has been added: network *sources* and *sinks* from other PulseAudio servers are now also displayed in the indicator menu and can be switched to.
* A *Preferences* dialog has finally arrived. These days you can easily adjust the looks of the menu using a GUI (which was previously only possible by editing `$HOME/.config/indicator-sound-switcher.json`). A corresponding menu item has been planted:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/9revw9yiv80r1938.png" "Sound Switcher Indicator's menu." >}}

## Preferences dialog

The dialog features two tabs:

* The **General** tab allows to hide all inputs and/or outputs at once:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/x1v4c133z4wx0600.png" "Sound Switcher Indicator: general preferences." >}}
* The **Devices** tab configures device and port display:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/aq5ubcb4zk473469.png" "Device preferences." >}}
* The **Refresh** button at top right reloads all devices and their ports so you don't need to reopen the dialog after device removal or addition.

All settings are applied on-the-fly after a short delay.

Other changes:

* A minor (yet breaking) change to the configuration file format. From now on the port configuration can only be an object (previously it was possible to use a string or `false`). This means you might need to update your config, which is a breeze with the new dialog.
* A long-outstanding bug with misplaced device items ([#55](https://github.com/yktoo/indicator-sound-switcher/issues/55)) has been fixed. Actually, the real issue is with GTK+ but I managed to work around it.

## Ubuntu support

My PPA provides packages for Ubuntu **18.04 Bionic** and **18.10 Cosmic** (read [how to install](https://github.com/yktoo/indicator-sound-switcher/blob/master/doc/install.md)). Bug reports are welcome at the [usual address](https://github.com/yktoo/indicator-sound-switcher/issues/).

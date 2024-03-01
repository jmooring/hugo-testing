---
type: post
date: "2014-02-08T00:00:00Z"
title: "1.2.1"
series: sound-switcher-indicator
tags:
    - indicator
    - Precise Pangolin
    - PulseAudio
    - Python
    - Quantal Quetzal
    - Raring Ringtail
    - Saucy Salamander
    - sound
    - Sound Switcher Indicator
    - Trusty Tahr
    - Ubuntu
    - Unity
image: "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png"
software: sound-switcher-indicator
---

After the [previous](0217) release of [Sound Switcher Indicator](/software/sound-switcher-indicator) an [article](http://www.webupd8.org/2014/02/sound-switcher-ubuntu-indicator.html) about it was posted on Web Upd8. I immediately started getting numerous bug reports, feature requests, questions and comments.

So I found out, for instance, that the indicator is also popular with old Ubuntu versions (up to 12.04).

<!--more-->

## What's new

* An autostart shortcut is added during the installation so that the indicator starts automatically after logon.
* All the existing functionality was backported to GTK+2 (a separate [branch](https://github.com/yktoo/indicator-sound-switcher/tree/gtk2) for it was created). Thanks to that the following Ubuntu versions are supported:
  * GTK+ version 2:
      * **12.04** LTS ({{< fl "Precise Pangolin" >}})
      * **12.10** ({{< fl "Quantal Quetzal" >}})
      * **13.04** ({{< fl "Raring Ringtail" >}})
  * GTK+ version 3:
      * **13.10** ({{< fl "Saucy Salamander" >}})
      * **14.04** LTS ({{< fl "Trusty Tahr" >}}) — tested in Trusty Alpha 2.
* A default program icon has been added. It will be picked up in the case a non-standard desktop theme is used. I've turned up the contrast a little bit to make it work with both light and dark themes:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png" >}}

## Installation

You can install or update the application, as usual, via my Launchpad PPA, see the [installation manual](/software/sound-switcher-indicator).

**NB**: since 13.04 (Raring Ringtail) has reached its end-of-life, Launchpad would not accept builds for this system anymore. You can download a GTK+2 based version [here](http://ppa.launchpad.net/yktooo/ppa/ubuntu/pool/main/i/indicator-sound-switcher/).

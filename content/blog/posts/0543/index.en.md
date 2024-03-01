---
type: post
date: "2020-01-11T13:33:26+01:00"
title: "Firmware 2.5.0.108 adds a new Wi-Fi network to Netgear Orbi Pro SRK60"
tags:
    - gadgets
    - review
    - Wi-Fi
    - Internet
    - router
    - hardware
    - Netgear
    - Netgear Orbi
image: "https://res.cloudinary.com/yktoo/image/upload/blog/qi9gtccxvwh93xw3l9p0.png"
---

My mesh router **Netgear Orbi Pro SRK60** (see [my review of the router](0401)) has recently received the firmware [version 2.5.0.108](https://kb.netgear.com/000061539/SRS60-Firmware-Version-2-5-0-108).

What's new in this version:

<!--more-->

* Support for *WPA2-Enterprise* security.
* Support for {{< wiki "IEEE_802.11w-2009" "en" "802.11w" >}} for better wireless security.
* Addition of the fourth ("Wireless 3") network.
* HTTP certificate update.
* In Insight, device access to the local network is now enabled by default.

For me personally the addition of another Wi-Fi network is the most useful. This turns an *Orbi* into a four-network access point: three "regular" ones + the guest portal.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/qi9gtccxvwh93xw3l9p0.png" "Wireless 3 settings." >}}

This new network, which is called *Wireless 3* in the admin interface, is supposed to be used for all kinds of {{< wiki "Internet_of_things" "en" "IoT" >}} devices, which revel in prying into your personal affairs. In the settings you can (and should) deprive them of access to each other or the local network, so that they can only access Internet.

With regard to this update I have the following three remarks:

* It's peculiar a software update can nowadays add another Wi-Fi network.
* Even before the update I used to put all IoT devices into a dedicated network, the *Wireless 2* in my case. This change gives you more freedom in defining your network layout.
* The update has reset my router to factory defaults for some reason, so I had to start configuring it from scratch. Do use the *Backup Settings* function!

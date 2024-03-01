---
type: post
date: "2011-12-16T00:00:00Z"
title: "Google Music Integration into Ubuntu"
tags:
    - Google
    - Google Music
    - Linux
    - music
    - Ubuntu
image: "https://res.cloudinary.com/yktoo/image/upload/blog/fqvawschyngs0829.png"
---

About a month ago I [posted](0126) about [Google Music](http://music.google.com/) cloud music storage service opening for public (which is still officially available in the US only).

Uploading 130 GB of music to the cloud has completed in about four days, so now I can enjoy the whole collection online from anywhere—although with some shortcomings (which are perhaps to be eliminated once the service goes out of the beta).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fqvawschyngs0829.png" >}}

<!--more-->

Some of the limitations can be overcome. For example, you get access to mp3 download feature by installing the [Music Plus for Google Music](http://chrome.google.com/webstore/detail/ipfnecmlncaiipncipkgijboddcdmego) Chrome extension. Additionally, you then no longer have to switch to the Google Music tab to pause or skip to the next track.

I personally preferred the [Play/Pause 4 Grooveshark & Google Music](http://chrome.google.com/webstore/detail/ocimhajpehjmepnegklahceceebnened) extension over the previous one, as it adds a tiny play/pause button right onto the toolbar (there are similar extensions for [Previous](http://chrome.google.com/webstore/detail/iklcgmiodfcphjidljmbbblgbicapmhf) and [Next](http://chrome.google.com/webstore/detail/niblnbcmjmbbadnkhjecmfgnlhafkhja) buttons available):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/90ca6ffxmbx20709.png" >}}

With all its advantages, Google Music however is still a webpage running in the browser, and it lacks integration with the operating system. I missed keyboard control the most.

A quick googling yielded the **Google Music Frame** application, also known as [Nuvola Player](http://launchpad.net/nuvola-player) by  Jiří Janoušek, which allows for real integration of Google Music into Ubuntu.

Google Music Frame is essentially Google Music page embedded into the program, and it could hardly be the other way—at least not until Google provides an open API for it:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/9a1ev959go1f0008.png" >}}

The player adds its items to the Launcher button:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bhlxrchffx6z3444.png" >}}

It also integrates with the Ubuntu Sound Menu:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/48j6fg0gea3g2059.png" >}}

So, in order to install the application:

    sudo apt-add-repository  ppa:nuvola-player-builders/stable
    sudo apt-get update
    sudo apt-get install google-music-frame

Once you're done, Dash will show the **Google Music Frame** item:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/5lxabv4tvwer2401.png" >}}

The program can also display standard Ubuntu popup notifications on track change, as well as hanle multimedia control keys. The latter can be assigned in usual way with **GNOME Control Center**:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hw422agc3cjn2736.png" >}}
The only thing missing is {{< wiki "Music_Player_Daemon" "en" "MPD" >}}'s ability to play Google Music streams. Maybe if the API goes open?..

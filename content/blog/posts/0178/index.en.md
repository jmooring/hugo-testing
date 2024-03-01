---
type: post
date: "2013-03-03T00:00:00Z"
title: "Sound Switcher Indicator for Ubuntu"
series: sound-switcher-indicator
tags:
    - GitHub
    - indicator
    - Launchpad
    - Linux
    - PulseAudio
    - Python
    - sound
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
image: "https://res.cloudinary.com/yktoo/image/upload/blog/nxq0nd14z9ut1387.png"
software: sound-switcher-indicator
---

I couldn't take it anymore so I created an audio input/output switcher indicator for Ubuntu.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nxq0nd14z9ut1387.png" >}}

<!--more-->

I've been trying to find one just as long as I've been using Ubuntu and Unity. It had to be an [application indicator](http://unity.ubuntu.com/projects/appindicators/) that would allow for easy switching of the default sound device. There's plenty of indicators for Unity already, including some pretty useless stuff, and yet no such a basic thing as sound selector available. Therefore one has to start the Sound applet, wait for it to open, choose the right tab and then select the required input or output device. Most often I used it to redirect audio to my [Logitech Bluetooth adapter](0141) to listen to music via decent speakers.

At last I decided to write such an indicator myself, so I began to read up on app indicators. It turned out creating a Unity indicator is pretty simple, especially with Python. So I made the very first prototype that used the `pacmd` command to switch output device ({{< fl "sink" >}}) and parsed its output to build device list.

It was a hundred line Python script, and it worked, but had a number of flaws. Device list wouldn't update automatically, and changing the default defice elsewhere didn't reflect in indicator's menu either. Furthermore, it depended on `pulseaudio-utils`.

All that wasn't very neat so I started learning the somewhat intricate [PulseAudio API](http://freedesktop.org/software/pulseaudio/doxygen/). Among other things, PulseAudio is almost completely asynchronous by design, so its events are best handled by a separate thread.

After a long string of experiments with Python's non-immaculate multithreading implementation (I'd mention {{< wiki "Global_Interpreter_Lock" "en" "GIL" >}} to start with), I made the application run smoothly. The menu consists of three sections: input devices (ordered by name), output devices (same) and static items.

The icon was designed in Inkscape:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lq2uaiz7thp90010.png" >}}

Any changes in PulseAudio daemon state are immediately reflected in menu's contents, even if it's open.

The next task was to build a .deb package for Ubuntu so that the application could be easily installed by anyone. Now, that was a real challenge. I am certain it's easier to create a multithreaded app indicator in Python than package it and publish at Launchpad. There's a lot of information on the subject available, but I couldn't help the feeling they're always explaining how to fly a plane without first describing how to take off (if you're interested in the subject, I'd strongly recommend starting with the [Distutils guide](http://docs.python.org/2/distutils/), which makes clear a lot of things. The next step could be [stdeb](https://github.com/astraw/stdeb)).

The application is built and available:

* The [source code](https://github.com/yktoo/indicator-sound-switcher) at GitHub;
* The `indicator-sound-switcher` package at [my Launchpad PPA](https://launchpad.net/~yktooo/+archive/ppa).

In order to install it:

    sudo add-apt-repository ppa:yktooo/ppa
    sudo apt-get update
    sudo apt-get install indicator-sound-switcher

Bug reports are welcome at [GitHub bugtracker](https://github.com/yktoo/indicator-sound-switcher/issues).

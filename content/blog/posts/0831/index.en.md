---
type: post
date: "2022-06-05T17:35:57+02:00"
title: "Ymuse on Flathub"
tags:
    - Ymuse
    - software
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Flathub
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/spobjqjbkliyovl7wrav.png"
series: ymuse
software: ymuse
---

As of today, [Ymuse](/software/ymuse), a GTK-based [MPD](https://www.musicpd.org/) client, is officially available in the free software store [Flathub](https://flathub.org/apps/details/com.yktoo.ymuse).

This has already been requested [a while ago](https://github.com/yktoo/ymuse/issues/12).

<!--more-->

Lately, I got curious about manufacturing *flatpak*'s. I've made a couple of *snap* packages before (for [Ymuse](/software/ymuse) and the [Sound Switcher Indicator](/software/sound-switcher-indicator)) so I wondered how the two compared.

As it turns out, making a `.flatpak` is a bit more straightforward as many routine tasks are automatically taken care of by `flatpak-builder`. At the same time, the documentation on the format is a bit sketchy, so the process involves a bunch of trial-and-error moves from the packager.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/spobjqjbkliyovl7wrav.png" "Ymuse enters Flathub." >}}

Anyway, **Ymuse** is now officially [listed on Flathub](https://github.com/flathub/com.yktoo.ymuse) and can be installed with:

```bash
flatpak install com.yktoo.ymuse
```

## Flatpak

How to install the `flatpak` command itself, you can find on its [official website](https://flatpak.org/setup/). Ubuntu features it in its standard repositories, therefore you can install it with this command:

```bash
sudo apt install flatpak gnome-software-plugin-flatpak
```

After that, you'll need to add the main software source, **Flathub**:

```bash
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
```

And, finally, you'll need to restart your session (but in the command line it will work straight away).

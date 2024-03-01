---
type: post
date: "2018-01-03T00:00:00Z"
title: "Key repeat settings in Ubuntu 17.10 Artful"
tags:
    - Artful Aardvark
    - Gnome
    - Gnome Control Center
    - Ubuntu
    - wacky
image: "https://res.cloudinary.com/yktoo/image/upload/blog/gu9yw1wxrl101352.png"
---

I've been adventurous enough to upgrade my iMac to *Ubuntu 17.10 Artful Aardvark*. That's the one that features *Wayland* instead of *X Window* and *Gnome Shell* instead of *Unity*.

The upgrade process proved to be a big challenge and took almost a week, since a regular system update resulted in a black screen. It required a complete OS reinstall from scratch in order to get it working, and then a few more weeks to have it configured my way. The thing is, settings in *Gnome Shell* are sometimes located at the most bizarre places of Gnome Control Center.

<!--more-->

In particular, hotkey settings can be found under *Devices* ⇒  *Keyboard*. I'd be grateful if someone explained to me what shortcut settings have to do with devices.

Anyway, one thing has been driving me crazy about this Ubuntu version: the excruciatingly slow key autorepeat. It took quite some effort to locate the relevant setting in *Gnome Control Center*. This time around, what is directly related to the keyboard device in my view, Gnome wizards have shoved into *Universal Access*:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/gu9yw1wxrl101352.png" "Gnome Universal Access." >}}

Here one has to click the unremarkable bar labelled *Repeat Keys*. One might think that'll turn the value *On* into *Off*, but—surprise!—it brings up the Repeat Keys dialog:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/h4ufx9te7kcm3380.png" "Gnome: Repeat Keys settings." >}}

The problem was, though, that this setting wouldn't visibly change the autorepeat speed, it seemed even it was doing the opposite. Ideas anyone? It took me about a month to figure out what was wrong with this dialog.

The correct answer: that setting, despite its name, is no repeat *speed*, but the reciprocal of it, i.e. *slowness*. In other words, to make key repeat faster, you need to slide it leftwards! The screenshot above shows the setting exactly as I like it to be.

So once again: my kudos to Gnome Shell developers! I hope my discovery will help someone with the same issue.

And, as an afterword, I have to mention that this latest Ubuntu version is a major blunder. I'd rate it as a worst update over the past decade or so. *Wayland* is atrocious: the graphics is lagging, hotkeys fail every once in a while, mouse cursor stumbles any time CPU usage goes up slightly. The worst part is the mouse cursor completely disappearing from the screen, while the mouse remains operational—which can only resolved by restarting the computer. Aarghhhh.

---
title: FAQ
menu: ymuse
weight: 100
---

Frequently Asked Questions about [Ymuse](/software/ymuse).

{{< toc >}}

## How do I pronounce "Ymuse"?

Like *why-muse*.

## Can you add MPRIS support to Ymuse?

It's not needed as there is already the [mpDris2](https://github.com/eonpatapon/mpDris2) project (see next question).

## Can I assign media buttons on my keyboard to control Ymuse?

Not directly. But there's an even better alternative: you can link your {{< abbr "MPD" "Music Player Daemon" >}} instance to your desktop environment using [MPRIS](https://wiki.archlinux.org/title/MPRIS). The easiest way to do that is to install the [mpDris2](https://github.com/eonpatapon/mpDris2) package.

Then MPD will respond to media keys regardless of whether Ymuse is running or not.

In Ubuntu it's as easy as running:

```bash
sudo apt install mpdris2
```

## Why can't I drag-n-drop multiple tracks at once in the Queue?

Dragging-n-dropping single tracks is supported as of version 0.22 [Xylophone](/blog/posts/0878). To implement that for multiple tracks one should dig deep into the specifics of drag-n-drop in GTK. It'll be done as soon as the time permits.

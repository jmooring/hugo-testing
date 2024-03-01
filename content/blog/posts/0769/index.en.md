---
type: post
date: "2021-02-25T09:08:58+01:00"
title: "0.17"
tags:
    - Ymuse
    - software
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Ubuntu
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wlfb8v23knjqaefztiwg.png"
series: ymuse
software: ymuse
---

[Ymuse](/software/ymuse) version **0.17** is released. 

Ymuse is a client application for the [Music Player Daemon](https://www.musicpd.org/).

## What's new

<!--more-->

* A new command for adding the selected library item to a playlist ([#17](https://github.com/yktoo/ymuse/issues/17)):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lefkmvf9eg3vb2qouvui.png" "The Add to playlist menu." >}}
  This function is supported for all library items, such as files, folders, artists, albums, playlists etc.<br>
  What can now be accomplished with two mouse clicks, would previously require loading a playlist into the play queue, adding the desired items and saving the queue back into the playlist.
* The album art display setting has been split into two: for library tracks and for Internet streams ([#30](https://github.com/yktoo/ymuse/issues/30)). This would make the Interface tab a bit overloaded with widgets, so player settings have got a separate tab:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wxzfleujpz3ktuzcetxx.png" "Player settings." >}}
  The rationale behind this change was improving the application's responsiveness. Album art download requests can slow down the player and even render it unresponsive on a slow connection. At the same time, streams rarely provide an album image, which is why the corresponding option is off by default.
* The Shortcuts info window (invoked with <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>?</kbd>) has been extended with more key combinations:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/u2efnyhotahu3fpvp7zm.png" "Keyboard shortcuts window." >}}

## Installation

Refer to the [application page](/software/ymuse) to learn how to install it.

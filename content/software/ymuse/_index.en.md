---
title: Ymuse
subtitle: Easy, functional, and snappy client for Music Player Daemon.
layout: product
icon: ymuse-icon-64.png
software: ymuse
weight: 20
menu: ymuse
active: true
codeRepoType: github
codeRepoPath: yktoo/ymuse
licenses:
    - apache2
seeAlso:
    - name: Ymuse on Snapcraft
      url: https://snapcraft.io/ymuse
    - name: Ymuse in AUR
      url: https://aur.archlinux.org/packages/ymuse
    - name: Ymuse-bin in AUR
      url: https://aur.archlinux.org/packages/ymuse-bin
    - name: Ymuse Flathub repository
      url: https://github.com/flathub/com.yktoo.ymuse
---

**Ymuse** is an easy, functional, and snappy GTK front-end (client) for [Music Player Daemon](https://www.musicpd.org/) written in Go.

{{< carousel >}}
https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png Ymuse main window (Queue tab).
https://res.cloudinary.com/yktoo/image/upload/blog/cwcmqjichatv2yklt2fu.png Ymuse main window: light theme.
https://res.cloudinary.com/yktoo/image/upload/blog/wjiqs1dyzbrvppslficd.png Ymuse main window: dark theme.
https://res.cloudinary.com/yktoo/image/upload/blog/wqud8spomcmuduvgar9d.png Ymuse Library tab.
https://res.cloudinary.com/yktoo/image/upload/blog/pnwj9nlucfuobw0vcv0l.png Ymuse Streams tab.
https://res.cloudinary.com/yktoo/image/upload/blog/tgvhoi8k04gsgod6jvsa.png Ymuse Preferences: General
https://res.cloudinary.com/yktoo/image/upload/blog/lgnnkthbnj5hk4uu5pwm.png Ymuse Preferences: Interface
https://res.cloudinary.com/yktoo/image/upload/blog/m4q41rd2klmfrcdft7nx.png Ymuse Preferences: Automation
https://res.cloudinary.com/yktoo/image/upload/blog/vile5cveex5bd4vefg6e.png Ymuse Preferences: Player
https://res.cloudinary.com/yktoo/image/upload/blog/vrqyquxgoncgxygly6kk.png Ymuse Preferences: Columns
{{< /carousel >}}

## Ymuse features

* Connection to a local or remote MPD server via TCP or Unix domain socket, auto(re)connect function.
* Displaying, sorting, and shuffling the play queue. Track drag-n-drop and removal.
* Filtering the play queue on a substring.
* Saving the play queue as a playlist (new or existing).
* MPD library browse and search functions.
* Browsing, adding, and renaming playlists.
* Own stream (a.k.a. Internet radio) list, which can be edited.
* Visible queue columns selection.
* Player title setting using Go template syntax.
* Toggling various MPD modes (*random*, *repeat*, *consume*).
* Seeking the current track to an arbitrary location.
* Light and dark desktop theme support.
* Internationalisation support. Bundled languages:
    * English
    * Dutch
    * German
    * Japanese
    * Russian

Be sure to check the [](faq) first if you have a question, a feature request, or a bug report.

Here's a short video tour of the application:

{{< youtube "h0g2gk5DM8s" >}}

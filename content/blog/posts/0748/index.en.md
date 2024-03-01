---
type: post
date: "2020-05-22T11:24:19+02:00"
title: "Go and the Music Player Daemon client"
tags:
    - Ymuse
    - software
    - open source
    - MPD
    - Media Player Daemon
    - development
    - Go
    - GTK
    - GitHub
    - Linux
    - Ubuntu
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/vwonidluzk5sxpscdz4e.jpg"
series: ymuse
---

Now I'm finally ready to tell you what's been keeping me busy during the last three weeks.

I've spent them learning a new programming language called [Go](https://golang.org/).

The process went so well that I even managed to write a new media player application [Ymuse](/software/ymuse). Or, to be precise, a *Music Player Daemon client*.

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/vwonidluzk5sxpscdz4e.jpg" "Go Gopher: cheers to Ymuse!" >}}

## Music Player Daemon

As a preface, a short introduction on what the heck [Music Player Daemon](https://www.musicpd.org/) (MPD) is.

It's a background service, or a *daemon*, that runs somewhere deep in your operating system and is capable of playing audio files and Internet streams (a.k.a. Internet radio stations).

Apart from playing audio this service is hardly noticeable. In order to control it an additional program called **client** is needed. There are [lots of such clients](https://www.musicpd.org/clients/) available for all kinds of platforms: Windows to Mac OS to Android to Wear OS.

When I first learned about this concept of separation of visual from non-visual I was puzzled at first but then quickly realised its benefits.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jxl4vaketbwhgfkmrza2.svg" "How Music Player Daemon works." >}}

In this architecture MPD is in charge of maintaining the music library, which assumes scanning it for files and reading tags from them, as well as the playback. That is a given.

The choice of the client application, on the other hand, is totally up to you. The picture above demonstrates you can even have several of them, all connected to the same MPD engine. They can also be located on a different device, like a computer in the network or a mobile phone.

This allows, for example, for a configuration where MPD is run on a single-board PC (like Raspberry Pi) attached to speakers while being controlled from another computer or via a mobile app.

The Music Player Daemon also provides support for playlists and streaming audio, so you get access to thousands of available Internet radio stations.

By the way, if you're using MPD on Linux, I'd recommend adding the `mpdris2` package to the mix. It will link MPD to the standard {{< abbr "MPRIS" "Media Player Remote Interfacing Specification" >}} bus and you'll be able to use your media keys (play, pause etc.) to control the playback.

## Ymuse

At this point you might be wondering why we need yet another MPD client.

Throughout the years I've tried numerous existing clients and settled on the minimalistic [Sonata](https://www.nongnu.org/sonata/), which I was pretty happy with.

There was, however, a couple of things that annoyed me:

* Inconvenient cascaded popup menus I had to use all too frequently.
* General slowness when dealing with massive playlists containing thousands of tracks.

The last one is the consequence of Sonata being implemented with Python, which is known to have performance issues with big data structures.

Long story short, one day I decided to develop my own client implementation. The application has got the name [Ymuse](/software/ymuse) and a martini-glass-shaped icon alluding to the letter `Y`:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wlfb8v23knjqaefztiwg.png" "The Ymuse icon." >}}

## Go Go Go

Ymuse is implemented with [Go](https://golang.org/), a pretty young yet promising programming language invented in Google.

{{< spoiler "What is Go?" >}}

Go is a strongly-typed language that can be natively compiled for lots of platforms and architectures, from *Linux* to *Android* and from *SPARC* to *ARM*. Which makes it a potential replacement for the outdated, clumsy and verbose C++.

Even though it's only **12** years old, it's adoption rate in the last years has been phenomenal.

Go is very programmer-friendly, with its syntax reminding Python, and it provides robust multithreading support out-of-the-box.

But perhaps the most important factor is its extensive standard library and the availability of thousands of third-party open-source libraries, which can be added to the project with a single `go get …` command.

Two of such libraries — [gompd](https://github.com/fhs/gompd) for interacting with the MPD and [gotk3](https://github.com/gotk3/gotk3) providing bindings for GTK — made it possible to develop an almost fully-functional Sonata clone in just a couple of weeks.

If you're also interested in learning the language I'd recommend the official [Tour of Go](https://tour.golang.org/) tutorial, where you can also run code snippets right away. And this great 7-hour video thoroughly explaining all major aspects of Go:

{{< youtube "YS4e4q9oBaU" >}}

{{< /spoiler >}}

Practically, I can say Ymuse handles my **12K+**-track playlist some two to three times faster than Sonata, and that can perhaps be further optimised.

## Ymuse v0.7

The latest Ymuse release is **0.7**, which looks as follows:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/mkosprfb6pxouv8sta3b.png" "Ymuse v0.7." >}}

At the moment I only provide [binaries](https://github.com/yktoo/ymuse/releases) for **64**-bit Linux (`.deb`, `.rpm`, and `.tar.gz`), but can extend them to other platforms if needed.

### Features

Features of the current version:

* Connection to a local or remote MPD server, auto(re)connect function.
* Displaying, sorting, and shuffling the play queue. Track removal.
* Filtering the play queue on a substring.
* Saving the play queue as a playlist (new or existing).
* MPD library browse and search functions.
* Browsing, adding, and renaming playlists.
* Own stream (a.k.a. Internet radio) list, which can be edited.
* Visible queue columns selection.
* Player title setting using Go template syntax.
* Toggling various MPD modes (*random*, *repeat*, *consume*).
* Seeking the current track to an arbitrary location.

### Plans

The TODO list is still quite long:

* Automated UI testing.
* ~~Internationalisation~~ Done!
* Packaging in a snap.
* Displaying album artwork.
* ~~Library browsing not only by files, but also by artists, albums etc.~~ Done!
* Drag'n'drop in the play queue.
* More settings.
* Multiple MPD connections support.

Some of the above items cannot be implemented due to limitations of the used libraries. Although, since they're all on GitHub, I can try to help develop them.

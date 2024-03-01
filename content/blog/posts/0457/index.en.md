---
type: post
date: "2019-11-10T18:45:16+01:00"
title: "Download online video from YouTube/Vimeo in Linux with ease"
tags:
    - YouTube
    - Vimeo
    - video
    - software
    - Linux
    - Ubuntu
    - how-to
    - tips & tricks
image: "/images/logos/youtube-logo.png"
---

What's the easiest way to download a video file from **YouTube**, **Vimeo** etc. in Linux? And how do you extract its audio track as an **MP3** file?

You can opt for one of numerous online video converters, but I personally prefer doing that from the command line using [youtube-dl](https://ytdl-org.github.io/youtube-dl/).

It supports video downloads from **YouTube**, **Vimeo**, **BBC**, **CBS**, and [about 1100 more](https://ytdl-org.github.io/youtube-dl/supportedsites.html) (even from *YouPorn*).

<!--more-->

## Features of youtube-dl

[youtube-dl](https://ytdl-org.github.io/youtube-dl/) is a cross-platform (Linux, MacOS, Windows) command-line utility written in Python. Some highlights of what it can do:

* Support for all popular video hostings: here's the [complete list](https://ytdl-org.github.io/youtube-dl/supportedsites.html);
* Video format selection;
* Proxy server support;
* Downloading videos by a playlist;
* Searching for videos with a subsequent download of the search result;
* Bypassing geographic restrictions using a proxy;
* Download speed throttling;
* Automatic retries;
* Support for IPv6;
* Audio track extraction in a desired format.

## Installation

Happy Linux users can install the program using a snap:

```bash
snap install youtube-dl
```

On a system that doesn't support snaps it can be installed with `pip`:

```bash
sudo -H pip3 install --upgrade youtube-dl
```

Version check:

```
$ youtube-dl --version
2019.11.05
```

## Video download 

The program is extremely simple to use. All you need is to provide a video URL.

For example:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ne9utarozbfbfrlhcdno.gif" "Example of youtube-dl video download." >}}

In the case you only need the *audio track* you'll have to add `-x`:

```
youtube-dl -x <URL>
```

By default it will download the audio file in the same format as in the video (`.mp3`, `.ogg`, `.m4a` etc.). Using `--audio-format` you can specify one of the available audio formats to save into:

```
youtube-dl -x --audio-format=mp3 <URL>
```

Since I love automation, I consider its ability to be used in scripts the most valuable feature.

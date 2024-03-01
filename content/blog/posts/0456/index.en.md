---
type: post
date: "2019-11-08T10:18:20+01:00"
title: "Foscam developers and the pattern login"
tags:
    - hardware
    - camera
    - Foscam
    - blunder
    - software
    - video
image: "https://img.youtube.com/vi/e7TmbUtIiUU/maxresdefault.jpg"
---

Being in the software business for a couple of decades, I used to think it's generally a good idea to test the software you develop *before* you ship it out. Yet, I keep stumbling upon situations where the developer doesn't seem to recognise the value of tested software.

Say, I've been using the **Foscam C1** webcam for a couple of years, one that looks like this:

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ymvghmzu32zbjqzuintb.jpg" "Foscam C1 webcam." >}}

I've bought back in the day it not only because it was reasonably priced, but mainly thanks to the fact you can play its video stream with any {{< fl "RTSP" >}}-capable player, for example, [VLC](https://www.videolan.org/vlc/). All you need is to open the following address:

```
rtsp://<username>:<password>@<IP address>/videoMain
```

Unfortunately, you can't configure it to use a fixed IP address, but this can be worked around with *DHCP address reservation* on the router.

Its [mobile app](https://play.google.com/store/apps/details?id=com.foscam.foscam), which is needed if you want to watch the video feed outside of your home network, is as good as horrible. It seems to violate every single UX design pattern—which is not so uncommon with our Chinese friends I must say.

But hey, *this* stands out even for the Chinese software standards. Have a look how they've implemented the pattern login function in their app (which they call "gesture login" for some reason):

{{< youtube "e7TmbUtIiUU" >}}

They've managed to spice up the boring pattern login process with a touch of an adventure and unpredictability!

My kudos, Foscam developers!

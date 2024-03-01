---
type: post
date: "2014-02-02T00:00:00Z"
title: "1.2.0"
series: sound-switcher-indicator
tags:
    - indicator
    - PulseAudio
    - Python
    - Saucy Salamander
    - sound
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
image: "https://res.cloudinary.com/yktoo/image/upload/blog/bfeb1axtu3ki2057.png"
software: sound-switcher-indicator
---

I've finally got to update my [Sound Switcher Indicator](/software/sound-switcher-indicator). Version 1.2.0 adds support for selecting not only the input/output device, but also a specific port:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bfeb1axtu3ki2057.png" >}}

<!--more-->

Although this doesn't look like a drastic change, it required a major code rewrite. Which is for the better I hope. I've finally managed to address thread {{< wiki "Race_condition" "en" "race conditions" >}} by moving PulseAudio callback handling to the GUI thread and getting rid of the dubious `Gdk.threads_init()`.

I've made most of the implementation during the long flight to [Egypt](0209), when I suffered from being offline and unable to google. But the final bit required [consulting](http://stackoverflow.com/questions/20844540/handle-a-signal-in-another-thread-in-python) StackOverflow and took much longer.

You can install or update the application, as usual, via my Launchpad PPA, see the [installation manual](/software/sound-switcher-indicator).

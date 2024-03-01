---
type: post
date: "2013-09-07T00:00:00Z"
title: "Tackling M-Audio Studiophile speaker power-off popping sound"
tags:
    - gadgets
    - hardware
    - IKEA
    - sound
    - speaker
image: "https://res.cloudinary.com/yktoo/image/upload/blog/d4vo7lbyib4g3157.jpg"
---

Recently I've discovered a peculiar feature of my [M-Audio Studiophile AV 40](0189) speakers.

<!--more-->

As I [wrote](0189), I'm using a Master/Slave power switch. It allows automatic turning off the power of up to four dependent devices when the master device (a PC in my case) is switched off. After I've rewired my quite complicated device setup, the speakers began to produce a deafening popping sound at the power switch-off. Considering their output power of 15 W per channel, this was far from enjoyable. And interestingly enough, this didn't happen in the beginning.

One day I felt I was fed up with it so I started experimenting.

I've tried dozens of different options: power and audio wiring, mutual cable locations, volume knob position etc. The following became clear:

* Volume level doesn't affect the popping level altogether;
* Mutual position of the cables does affect it, but the difference is marginal;
* If the audio input cable is unplugged, there's no popping sound at all. Meaning, it's a pickup;
* There's no difference whether the audio cable is plugged into the rear input or *Aux In* at the front;
* Other power cables have almost no influence on the popping sound.

I've solved this eventually. You only get the popping sound if the speaker's power cable is the only device in the power chain. If another device is plugged into the adjacent *Slave* socket, it's completely gone. I had a background lighting plugged into the power switch before, which apparently prevented the speaker from clicking. As for the cause of this, the speaker is definitely equipped with a transformer power supply, which, when unplugged from power, produces a powerful surge. As soon as it's shunted with any other device, even a low-power one, it's not induced anymore.

To cut the long story short, I eliminated the problem by plugging an Ikea's {{< fl "Patrull" >}} night light into the nearby socket. It's very compact and draws negligible power:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/d4vo7lbyib4g3157.jpg" >}}

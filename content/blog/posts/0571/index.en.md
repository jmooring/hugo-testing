---
type: post
date: "2020-01-23T17:51:55+01:00"
title: "How to power on a laptop without opening the lid"
tags:
    - DIY
    - hardware
    - gadgets
    - laptop
image: "https://res.cloudinary.com/yktoo/image/upload/blog/do5e6yvsyl0shba3emy2.jpg"
---

At home I'm using my laptop in a kind of a stationary setup. It has all the peripheral devices, like a 4K display, a keyboard, a mouse etc., constantly attached to it.

This is pretty neat and looks as follows:

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/do5e6yvsyl0shba3emy2.jpg" "My work place." >}}

Such a setup is also convenient since it allows you to grab and carry your laptop after disconnecting a couple of cables.

## The power-on problem

And this is all great except for one small, but annoying issue. My **Dell XPS 13**, like many other laptop models, has its power button hidden beneath the lid.

It's good because it prevents the device from an accidental powering on, yet on the downside, in order to turn it on, you'll need to:

1. Slide the laptop out of the monitor stand;
2. Open the lid;
3. Push the power button;
4. Close the lid;
5. Slide the laptop back in.

And you have to follow this routine every time you want to turn the computer on.

## Possible solutions

I've explored the options and searched quite a few forums where people with a similar problem asked for an advice, with no luck.

There is, for instance, the {{< wiki "Wake-on-LAN" >}} function, but in order to use it you'll need another device capable of sending a *magic packet*. Too cumbersome.

The laptop's BIOS also offers wake-by-USB support, but that would require having the USB ports constantly powered, which would deplete the battery pretty quickly once you disconnect it from the AC. Nah.

## The solution

I've eventually managed to find an almost perfect, but also a slightly quirky, solution. Which I'm going to share with you.

The laptop's BIOS has the **Wake on AC** switch. Once activated, the laptop will power on every time you connect the power adapter to AC or, alternatively, its DC cable to the laptop:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/qcdogrn0h2eamp6rcsve.jpg" "Dell XPS 13 9343 BIOS settings." >}}

Bingo! But pulling the AC plug from mains or, rather, the DC plug from the laptop isn't that great an option. It may lead to a loose connection over time.

When at home, my laptop is powered by a back-up power adapter I've bought at AliExpress. It's pretty cheap so I decided to experiment with it.

With the help of a soldering iron and a wire cutter I've inserted a flip switch from an old IKEA lamp into the adapter's **DC** cable:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/rnthrctwxyyaklq4k4nu.jpg" "Power swith on the laptop's DC cord." >}}

That's about it! Now all you need to turn your laptop on is flip the switch twice. Works as a charm!
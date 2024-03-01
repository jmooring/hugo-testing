---
type: post
date: "2015-06-14T00:00:00Z"
title: "USB testers and charging speed"
tags:
    - charging
    - gadgets
    - geek porn
    - review
    - USB
image: "https://res.cloudinary.com/yktoo/image/upload/blog/r54xwb1o2p410736.jpg"
---

Out of curiosity I've ordered a couple of USB voltage testers from eBay (there's [plenty of them](http://www.ebay.com/sch/i.html?_nkw=usb+voltage+tester) there).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/r54xwb1o2p410736.jpg" "USB voltage testers." >}}

For your information, a *USB voltage and current tester* is a device for measuring voltage and current coming from a USB output into a gadget (usually being charged).

<!--more-->

The photo above depicts a couple of models I possess. They both look pretty much like a regular USB stick, with the exception of a USB output at the side. In order to get voltage/current readings, you have to plug it between the USB port and the gadget being charged.

The one on the right is labelled {{< fl "Keweisi" >}}, whatever that means, and there's no further model names to these. Therefore I'll refer to them as "No. 1" and "No. 2".

## Tester No. 1 {#model-1}

The No. 1, which cost me some €2 (shipping included), is pretty straightforward. Its 4-digit LED display alternates every 4 seconds between voltage in volts:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/19h5as2qdqev0859.jpg" "No. 1: voltage readings." >}}

And current in amperes:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/epinzvi3rlnp2794.jpg" "No. 1: current readings." >}}

### Specifications

* Input voltage: 3­…8 V
* Current: 0…3 A
* Voltage resolution: 10 mV
* Current resolution: 10 mA
* Voltage measurement error: ≤ 1%
* Current measurement error: ≤ 2%
* Voltage drop: 200 mV

## Tester No. 2 {#model-2}

The No. 2 is a bit more advanced, cost me about €5 (also inclusive shipping). It features a white-backlit LCD display providing four readings at once: voltage, current, charging duration (hours:minutes) and cumulative charge (capacity):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/m2dzwc9kpuqa0360.jpg" "Model No. 2." >}}

The duration display is only incremented during charging.

### Specifications

* Input voltage: 3­.5…9 V
* Current: 0…3.3 A
* Duration: 00:00…99:59
* Charge: 0…99.999 Ah
* Voltage resolution: 10 mv
* Current resolution: 10 mA
* Charge resolution: 1 mAh
* Voltage measurement error: ≤ 1%
* Current measurement error: ≤ 0.4%
* Voltage drop: 200 mV

The duration and charge readings are kept even when the tester is disconnected from power, and there's a tiny button on the side for resetting them:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xh2fzp18u2hh2792.jpg" "Duration and charge reset button." >}}

## Tester comparison: voltage {#comparison-voltage}

Let's play with these two a little to figure out how trustworthy their readings are.

I'll start with voltage measurement. They both claim to have accuracy not worse than 1%, which amounts to 50 mV on a 5 V input.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/4jmoboj1702k1928.jpg" "Voltage comparison." >}}

The difference between the two is clearly greater than 0.05 V (5.29 vs. 5.22). My multimeter tells me, however, that the truth is somewhere within that range:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/x3sm3cxty9792683.jpg" "Voltage check with a multimeter." >}}

According to the above, both of them fall into the 50 mV bracket.

## Tester comparison: current {#comparison-current}

Let's now compare how they measure current. You can see on the previous photo that the no. 1 itself consumes about 10 mA. Once swapped, the no. 1 doesn't detect any current drawn by no. 2 (perhaps it's lower than 10 mA):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lupbmq8ittf72714.jpg" "No. 2 current consumption." >}}

We'll take this into account when comparing their readings.

Let's now add some load, for which I used my phone Samsung Galaxy Note 4, and a power source (an Apple iPad DC adapter, rated 2 A):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/dkx79jnvvykv1094.jpg" "Measuring current by both testers, Apple iPod DC adapter." >}}

The readings slightly differ. Strangely enough, if you swap the testers, the current drawn by the phone drops:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/sid1qcvcf1e52557.jpg" "Measuring current by both testers, Apple iPod DC adapter." >}}

In all scenarios no. 1's readings are somewhat lower, but the difference is marginal.

Another experiment involves engaging a Chinese-made 4-port DC adapter (rated max. 2.1 A) as a power source. The current figures go up:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tfzc3a3ad7qg2800.jpg" "Measuring current by both testers, noname DC adapter 2.1 A." >}}

This time the readings are very close to each other, and, considering the current consumed by the no. 1, they're spot-on. Accuracy test is passed.

I'll use the more advanced tester no. 2 for further tests. It's also capable of taking input voltages up to 9 V (no. 1 — only 8 V), which will become relevant later on.

## Comparison of DC adapters and USB cables {#adapters-and-cables}

It's now time to get some practical value from these geeky thingies with lots of digits.

### DC adapter: Apple iPad, 2 A

The DC adapter by Apple generates 1.57 A with a single tester, with its voltage slightly dropping to 4.97 V:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/o7kcbsq48uve2505.jpg" "Apple DC adapter: current 1,57 A." >}}

It doesn't seem to be very forthcoming in this charging business with non-Apple devices.

### DC adapter: Noname, 2.1 A

Conversely, this Chinese four-port one is very diligent and welcoming any connected gadget. However, I'm about to demonstrate that the USB cable you're using is often *more* important for the charging speed than the power source.

An original Samsung Galaxy Note 4 charging cable, about one metre long:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/5ndvci2iz3hy2616.jpg" "Samsung Galaxy Note 4 cable." >}}

With the phone plugged with it, it gives 1.74 A:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wun77yfe94ta1336.jpg" "Samsung cable: current 1.74 A." >}}

Non-original, but quality [Hema](http://www.hema.nl/winkel/school-en-kantoor/media-en-computer/accessoires/micro-usb-usb-laadkabel-(60300009)) Micro USB cable, length 2 m, causes current to drop to 1.22 A:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/veemyrtyfxhh0430.jpg" "Hema cable: 2 m, current 1.22 A." >}}

Not original at all, but very handy Muvit Retractable Micro USB, max. length ca. 70 cm:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ld4nc9gfyclg3049.jpg" "Muvit Retractable cable." >}}

When using it the current drops further, to 1.11 A:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/shgwx2ip3l4f3372.jpg" "Muvit Retractable cable: current 1.11 A." >}}

Equally ungenuine and handy, anonymous cable of 20 cm. You can buy five of them for a couple of euros at eBay. Its killer feature is magnetic clips at the ends:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/5mmteur05o0y2998.jpg" "20 cm magnetic cable." >}}

Here's a surprise: it provides the same current as the original one, 1.74 A:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/7y9kmh0e9dbw1089.jpg" "20 cm magnetic cable: current 1.74 A." >}}

But the biggest surprise is still to follow. I've picked a cable shipped with some cheap gadget from Hong Kong, about a half metre long and looking like any other cable. The shocking news is the charging current with it drops to as low as 220 mA, or *eight* times less!

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/j845yljluj4c1525.jpg" "Anonymous cable: current 0.22 A." >}}

Which means it'll take eight times as long to charge your phone with it. Think of it.

I've also tried charging two devices at once. The total current is even more than the 2.1 A the adapter is supposed to be generating:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/vqh6baliq7ue0560.jpg" "Charging two devices: total current 2.19 A." >}}

### A powered USB hub

The experiments above allow us to consider the 20 cm cable a reference one.

If we use a powered USB hub as a source (powered by a 2-ampere DC adapter):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/sf3vb30nq48i0388.jpg" "USB hub, current 0.94 A." >}}

The current halves as compared to the regular DC adapter, which is also confirmed by the tester no. 1:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fxpatbdphzbe1837.jpg" "USB hub, current 0.92 A." >}}

### DC adapter: Samsung Galaxy Note 4

I'll show you some exotics now. The bleeding edge of power development, Samsung Galaxy Note 4 *Adaptive Fast Charging* DC adapter (max. output current 2.1 A) looks like a million other ones and gives the expected 5 V when idle.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bjvpip27f7m91796.jpg" "Samsung DC adapter, voltage 5 V." >}}

However, once hooked up with the device it's intended for, its voltage soars to 9 volts!

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/u626i74a25vd2986.jpg" "Samsung DC adapter, voltage 9 V." >}}

Since the current remains almost at the same level, it will nearly double the charging speed. I can only hope its electronics won't fail when choosing the appropriate voltage level, providing 5 V for all other devices.

It's also apparently got a roomy capacitor inside, as it continues to power the USB tester for about half a minute, when unplugged:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/4pe7mcbd1ngi0001.jpg" "The remaining charge." >}}

## Conclusions {#conclusions}

My conclusions are as follows:

1. Testers and DC adapters made-in-China can be of a reasonable quality.
2. USB cables (most of the are also Chinese-made) can widely vary in quality.
3. Under the same circumstances, long and/or thin cables cause slower charging.
4. The only reliable way to evaluate adapter/cable charging performance is using a USB tester.
5. Samsung adapters rock.
6. Apple adapters are overrated.

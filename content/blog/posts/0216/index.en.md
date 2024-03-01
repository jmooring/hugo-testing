---
type: post
date: "2014-01-31T00:00:00Z"
title: "How to add an external power supply to a USB hub"
tags:
    - Apple
    - DIY
    - electronics
    - gadgets
    - hardware
    - iMac
    - USB
image: "https://res.cloudinary.com/yktoo/image/upload/blog/6u2tbe7u35471499.png"
---

I've been looking for quite a while for a USB hub that would match the design of my [iMac](0120). For those who own an iMac a USB hub is a must-have, since Apple have moved all available ports, including even the headphone one, to its back side. Which is in my opinion a typical example of design gone totally wrong.

<!--more-->

At last I found a cute [four-port device](http://www.hema.nl/winkel/school-en-kantoor/media-en-computer/accessoires/usb-hub-20-(39609052)) in a {{< fl "Hema" >}} store, in an anodised aluminium finish that looked exactly like iMac's:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/6u2tbe7u35471499.png" >}}

However it had a major downside. Devices that draw considerable power from the USB port, like USB-powered hard drives, would report read-write errors all the time. That's because the power provided by the hub via its thin cable wasn't sufficient for them to operate properly.

I've spent some time researching a powered USB hub that I had, and discovered that the external power supply is directly connected to the hub's logic, whereas the VCC line from the computer is connected via a diode. This way the hub can operate both in powered or passive mode.

Here's the schematic of the amended version:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tg7cnp9n75302120.png" >}}

The required changes are marked red. The diode is inserted in the power line connected to the computer; it must be rated at least 2 A. It's a good idea to connect one or two 100 µF electrolytic capacitors at the port (output) side of the hub to smoothen voltage surges caused by external devices.

The diode is mounted right on the USB-cable:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/pyie47umgqxa2964.jpg" >}}

The shields of both cables are interconnected. The whole unit is to be secured with insulating tape.

I replaced the original hub's USB cable with a more robust double-shielded version and moved it to the back of the hub from its side. Here's the hub attached to the iMac's foot:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/x3p32h96ged30203.jpg" >}}

Instead of the conventional female power connector installed in the hub I used a standard USB plug, which can be connected to any AC-DC adapter equipped with a USB socket (I recommend using a 2 Ampere rated adapter):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/cw7bz2g1ihik3536.jpg" >}}

After the alteration the hub works fine with USB-powered hard drives and can charge other devices when the computer is off.

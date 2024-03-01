---
type: post
date: "2019-09-29T20:33:35+02:00"
title: "Netgear Orbi Pro SRK60 mesh router review"
tags:
    - gadgets
    - review
    - Wi-Fi
    - unboxing
    - Internet
    - router
    - hardware
    - Netgear
    - Netgear Orbi
image: "https://res.cloudinary.com/yktoo/image/upload/blog/ihz4hlumirsc2592.jpg"
---

## Preface

I've been using my [Linksys E4200](ru;0096#router) router for about eight years and was quite happy with its very robust operation. However, any hardware is destined to get outdated over time.

Firstly, as soon as we'd moved from our former apartment into a three-storey house it became evident the Wi-Fi coverage was suboptimal. In some remote corner you'd sometimes hardly get any connection at all. Secondly, it didn't support modern IEEE standards such as **802.11ac**, which was also hurting the bandwidth.

Thus eventually I've decided to go for a **mesh Wi-Fi system**.

<!--more-->

## Mesh—what does it mean?

A conventional wireless setup with multiple access points would normally cause a client device to establish a connection with the one providing the strongest signal in this specific location. This requires going through a number of steps like authentication, protocol and key negotiation etc., which is time consuming and results in an Internet outage for each switch from one access point to another.

A *mesh system* is also comprised of several wireless access points, but they make up a single logical Wi-Fi network. In a mesh system the client device can seamlessly (and almost instantaneously) switch between its access points.

## Choosing a mesh router

The ability to configure the system via a web interface was at the top of my requirement list. Last years almost all hardware vendors have [moved](https://routersecurity.org/MeshRouters.php) most settings "into the cloud" depriving the user from any possibility to change its parameters except for a couple most common ones. Moreover, they mandate you to make an account on the vendor website and, most of the time, to install their mobile app to be able to administer the device.

I hate when such choices (or, rather, lack thereof) are forced upon me. I revel in controlling devices I've bought for my own money.

That ruled out most of the popular mesh systems, such as *Google Wi-Fi*, *Eero*, *Luma*, *Plume*, and others.

Finally I've arrived at [Netgear Orbi Pro SRK60](https://www.netgear.com/orbi-pro/SRK60.aspx) as my choice. It's one of the most advanced and robust mesh systems that provides a proper web administration GUI.

## Netgear Orbi Pro SRK60 and SRK60B03

**SRK60** is essentially a combination of a router (the central controlling device) **Orbi SRR60** and one or two satellites type **SRS60**.

According to Netgear's specs':

* The **router + satellite** (SRK60) kit covers an area up to **5,000 sq ft** (**464 m²**),
* The **router + two satellites** (SRK60B03) kit can service an area up to **7,500 sq ft** (**700 m²**).

I've chosen for the first option as it'd supposedly be well enough for all three floors and the garden.

## SRK60 specifications

Below are the technical specifications of SRK60 copied from Netgear's [document](https://www.netgear.com/images/datasheet/orbi/SRK60.pdf):

{{< table "table table-striped" >}}
|Feature            |Value                                                   |
|-------------------|--------------------------------------------------------|
|Total bandwidth    |3000 Mbps (1733 + 866 + 400 Mbps)                       |
|Wi-Fi coverage     |5,000 sq ft (464 m²)                                    |
|Dedicated backhaul |4x4 (1.7 Gbps)                                          |
|Wi-Fi technology   |Tri-band: 802.11b/g/n 2.4 GHz + two 802.11a/n/ac 5 GHz  |
|Dimensions         |6.8×3.3×9.7 in (17.2×8.3×24.6 cm) each                  |
|Weight             |2.06 lb (930 g) each                                    |
|Ethernet ports     |Router: 1×WAN, 3×LAN. Satellite: 4×LAN; 10/100/1000 Mbps|
|Beamforming        |Yes                                                     |
|Insight app        |Yes                                                     |
|WPA/PSK2 support   |Yes                                                     |
|Traffic separation |3 SSIDs                                                 |
{{< /table >}}

At this moment, it's on sale on [bol.com](https://bit.ly/2nMIMM6) at **€ 369**.

## What's in the box

The packaging is a bulky cubic cardboard box.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/3swthrtu8tji1195.jpg" "Netgear Orbi Pro SRK60 is the box." >}}

What's inside: one router, one satellite device, two AC adapters and two mount kits for attaching the devices to a wall or ceiling. And, inexplicably, only a single flat Ethernet cable:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/l8fkcb7nef300552.jpg" "What Netgear Orbi Pro SRK60 kit consists of." >}}

The twin brothers: the satellite is grey (on the left) and the router is blue (on the right):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/5nh56ybegozz2892.jpg" "SRS60 satellite and SRR60 router." >}}

The two look exactly the same, except for the colour of the top inserts and Ethernet ports on their rear side.

* The **satellite** (left) features a sync button, four gigabit Ethernet ports, a power button, a power socket and a tiny reset button.
* The **router** (right) has all the same except for the ports. There's a single WAN (Internet) port and three regular LAN ones.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/gxa51een26172338.jpg" "Rear side controls." >}}

Initially both devices are labeled with a plastic strap providing a QR activation code and default Wi-Fi credentials.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ut9lbcs9f70h3655.jpg" "QR codes and wireless authentication data." >}}

## Three Wi-Fi networks + LAN

One of the advantages of SRK60 is its ability to create up to three wireless networks:

1. Main ("admin") network, optionally with the WPA/PSK2 authentication
2. Secondary ("employee") network, also with an optional authentication
3. Guest network. It's always open, but you can protect it with a password on the {{< wiki "captive portal" >}}.

The web interface is only reachable via the main Wi-Fi or Ethernet network. Likewise, devices connected to Ethernet can only see each other or those connected to the main Wi-Fi network, and vice versa.

Devices attached to the secondary and the guest networks can access Internet, but never see each other or LAN devices.

## Web GUI

The web interface has two major sections, **Basic** and **Advanced**.

### Basic

This section is for non-tech-savvy folks. Here one can change basic system settings, such as IP addresses, Wi-Fi passwords etc.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xxugzu7ypb1f2684.png" "Basic ⇒ Home." >}}

{{< spoiler "Show Basic interface screenshots" >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xlqh6skvc51e3160.png" "Basic ⇒ Internet setup." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/i3ho683l3qoc2527.png" "Basic ⇒ Wireless 1." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/8zycw9d2naqq1209.png" "Basic ⇒ Wireless 2." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/scg8df2zs0co1426.png" "Basic ⇒ Attached devices." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/9fxecxa8xwzl1265.png" "Basic ⇒ Guest portal settings." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/2qd4yyo4xfta1841.png" "Basic ⇒ Speed test." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/s02ojk6yq40y1742.png" "Basic ⇒ Add satellite." >}}
{{< /spoiler >}}

### Advanced

Quite predictable, the Advanced section has many more settings, so I'm going to explain it in more detail.

The Home page provides a brief overview of the router's parameters:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/cncs7lmsqeus1923.png" "Advanced ⇒ Home." >}}

There's also an interactive Setup wizard, which can help you to get the basics right.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nl08b5xhibs42834.png" "Advanced ⇒ Setup wizard." >}}

#### Setup section

Setting for the Internet, WAN, Wi-Fi and the local network.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tpe1stncz6h70496.png" "Advanced ⇒ Setup ⇒ Internet setup." >}}

The Wi-Fi settings screen looks very much like its counterpart from the Basic mode. It allows you to switch either Wi-Fi on or off, set up the authentication and used radio channels.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/72rgrixxeqsf0611.png" "Advanced ⇒ Setup ⇒ Wireless 1." >}}

Guest portal settings. This one can also be switched on/off, you can specify a password to be entered in the captive portal, guest session duration, and terms and conditions document also shown when authenticating the user on the captive portal:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nz0s0n4eww1b2347.png" "Advanced ⇒ Setup ⇒ Guest portal settings." >}}

WAN settings allows you, among other things, to activate NAT (network address translation).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/znwevk4ym9ao3632.png" "Advanced ⇒ Setup ⇒ WAN setup." >}}

Local area network settings. You can set up the DHCP server and configure IP address reservation for a specific MAC address.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/qmzukj7ppni11875.png" "Advanced ⇒ Setup ⇒ LAN setup." >}}

Device name setting:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fwggnyxnl9wr2374.png" "Advanced ⇒ Setup ⇒ Device name." >}}

#### Security section

The *Security* section is quite an interesting one. It allows you to block individual devices, sites, ports.

Access control page. It shows every device ever connected to any of the networks, and you can allow or deny its Internet access. Also you can choose the global default for newly connected devices.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/vmtsutdqrkdj2260.png" "Advanced ⇒ Security ⇒ Access control." >}}

On this matter I do have some remarks.

Initially I wanted to block all new devices by default so that I could approve each of them on an individual basis. However I've quickly run into a bug when *allowed* devices would occasionally jump into the *Blocked* list, seemingly randomly. I'm 99% certain it a list handling bug in the router firmware.

So I've filed a service ticket with Netgear support. For a couple of weeks they tried to reproduce the problem, and failed (reportedly). At the same time I had it reproduced several times a day, which got quite annoying at some point. So the support eventually asked me to provide a *complete setting dump* (containing, among other things, pretty sensitive date like devices' MAC addresses and VPN keys).

I was totally unwilling to do that so I declined and switched to "Allow all new" by default. It isn't a big issue after all since all wireless networks are password-protected and any new connected device gets immediately spotted and reported upon by my Fingbox.

Site blocking settings:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nwh84nkdbkvv2509.png" "Advanced ⇒ Security ⇒ Block sites." >}}

Next to domain blocking, you can also filter TCP/UDP traffic to specific hosts and ports:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/w47dcooyrgh51825.png" "Advanced ⇒ Security ⇒ Block services." >}}

Blocking scheduler:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/w30628dkpeg30122.png" "Advanced ⇒ Security ⇒ Schedule." >}}

E-mail notification page:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/3di02xyozmsg3065.png" "Advanced ⇒ Security ⇒ E-mail." >}}

#### Administration section

The overview page:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/w92bnhe5sht42782.png" "Advanced ⇒ Administration ⇒ Router status." >}}

Access and service logs:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bb3t7voragcg0024.png" "Advanced ⇒ Administration ⇒ Logs." >}}

A very useful device overview page shows the satellite's status and, for each device, which network it's connected to:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ghe1g3jvjw502876.png" "Advanced ⇒ Administration ⇒ Attached devices." >}}

Settings backup/restore:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/84j3vae10yk30483.png" "Advanced ⇒ Administration ⇒ Backup settings." >}}

Adminstrator password:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ddsr5oq6hf020270.png" "Advanced ⇒ Administration ⇒ Set password." >}}

NTP time synchronisation settings:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/0cfn223tevmc2084.png" "Advanced ⇒ Administration ⇒ NTP settings." >}}

Device firmware update. A new firmware get downloaded automatically as soon as you open this page. Then you can choose whether to also install it automatically or manually:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/zwte7sbfngk70557.png" "Advanced ⇒ Administration ⇒ Online update." >}}

#### Advanced setup section

The {{< fl "Advanced setup" >}} section contains the more hardcore parameters, like the operation mode (router/access point), VPN, UPnP etc.

{{< spoiler "Show Advanced setup screenshots" >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/rd2efjxgi53p0350.png" "Advanced ⇒ Advanced setup ⇒ Advanced wireless settings." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/1j0dh2mvwefc0514.png" "Advanced ⇒ Advanced setup ⇒ Router/AP mode." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/363j8h041h920123.png" "Advanced ⇒ Advanced setup ⇒ Port forwarding/triggering." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/sexerr60fief1305.png" "Advanced ⇒ Advanced setup ⇒ Dynamic DNS." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/3j86wzqynd3k2963.png" "Advanced ⇒ Advanced setup ⇒ VPN service." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/o8yokn5yjpza3036.png" "Advanced ⇒ Advanced setup ⇒ Static routes." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/88d89p5zbju53329.png" "Advanced ⇒ Advanced setup ⇒ Remote management." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/6elwyg8p9q3s3518.png" "Advanced ⇒ Advanced setup ⇒ UPnp." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hwnwgpqvlu9l1963.png" "Advanced ⇒ Advanced setup ⇒ IPv6." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/gipj1liyygud3464.png" "Advanced ⇒ Advanced setup ⇒ Traffic meter." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xti0gwailpzg1451.png" "Advanced ⇒ Advanced setup ⇒ VLAN/Bridge settings." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/rc988cmjyahx1460.png" "Advanced ⇒ Advanced setup ⇒ Sync button." >}}
{{< /spoiler >}}

### Debug settings

This router also features a hidden Debug page, which you can see by navigating to `http://<router_address>/debug.htm`.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/46gka0p48s4m0976.png" "Debug settings." >}}

## Wi-Fi speed

Let's move from theory to practice. One of my main drives to upgrade the router was improving the wireless connection bandwidth and stability.

**Worth noting:** in my setup, the satellite is connected to the router via Ethernet and not via the backhaul.

When it comes to bandwidth Netgear Orbi is stellar. I've made some measurements with my mobile using [fast.com](https://fast.com/) and [speedtest.net](https://www.speedtest.net/). Also I've metered the mobile (LTE/4G+) data speed, out of curiosity.

Below is the summary of my readings (the speed is in **Mbps**):

{{< table "table table-striped" >}}
|Client device location                   |Speed according to fast.com|Speed according to speedtest.net|
|-----------------------------------------|---------------------------|--------------------------------|
|Wi-Fi next to the router                 | ⇓ 590 — ⇑ 400             | ⇓ 306 — ⇑ 394                  |
|Wi-Fi next to the satellite              | ⇓ 570 — ⇑ 420             | ⇓ 263 — ⇑ 457                  |
|Wi-Fi away from both router and satellite| ⇓ 280 — ⇑ 280             | ⇓ 279 — ⇑ 200                  |
|LTE/4G+                                  | ⇓ 190 — ⇑ 11              | ⇓ 157 — ⇑ 10                   |
{{< /table >}}

{{< spoiler "Speed measurement screenshots" >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jkeq1q548iq41196.png" "Wi-Fi speed, next to the router — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hrukihmjef6y3087.png" "Wi-Fi speed, next to the satellite — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/907coz8rsvv90863.png" "Wi-Fi speed, away from both router and satellite — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tuxw7dhmdsmx2442.png" "LTE speed — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/njxz7em0h31f0317.png" "Wi-Fi speed, next to the router — speedtest.net." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/49tn7l79fncj1135.png" "Wi-Fi speed, next to the satellite — speedtest.net." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/i2nl4vvpcz8p2723.png" "Wi-Fi speed, away from both router and satellite — speedtest.net." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jes6kfky29mx2331.png" "LTE speed — speedtest.net." >}}
{{< /spoiler >}}

On a side note, the difference between the measurements by the two services is sometimes striking. I have the impression fast.com is somewhat more accurate since its readings vary less.

When the phone is located next to either of the device, the download bandwith is ca. **500 Mbps**, upload is ca. **400 Mbps**. This is pretty close to the overall "official" bandwidth of [my Internet connection](ru;0337).

When the phone is equally removed from both devices, the speed is about **280 Mbps**. Which is decent in my view.

## Conclusions

After having used the system for nine months I can conclude my **Netgear Orbi Pro SRK60** is stable and robust.

There a couple of points though:

* In the very beginning the router would sometimes become unresponsive after some configuration changes. In that case it could only be brought back to life with a cold reboot. Luckily, this never happened in the past few months.
* The access control bug with "Block new devices by default" mentioned above. I couldn't resolve it with Netgear support (as what they asked of me was too much).

On the positive note, its three-network feature is incredibly useful:

* The primary network is being used by all home devices: phones, computers, the [smart TV](0243) and so on.
* The secondary ("employee") network is being used by various IoT devices, like my [Nest Protect](0265)s and the [Growatt](ru;0387) solar converter. There's nothing in my local network they should be allowed to see.
* The guest network is, well, for guests.

The latter could use some improvement though. It cannot be WPA-protected, and the configured password is only asked once a connection has been established, in the captive portal. Because of that I got lots of new unknown devices reported, I believe these were just passers-by's phones configured to connect to whichever open Wi-Fi is available. I resolved that by hiding the guest network, so you'll need to know its SSID in order to connect.

**P.S.** update: the recently released **2.4.0.114** firmware version now features bandwidth setting per network. So you can, for instance, configure the primary network for 80% of the available bandwidth, and the two remaining for 10% each.

### Pros

* Cloud- and mobile app-free
* Every setting can be changed using the web interface
* Both components are robust and stable
* Perfect Wi-Fi coverage and seamless mesh function
* Decent shoice of settings and parameters
* Three independent Wi-Fi networks
* Gigabit Ethernet ports (3x on the router, 4x on the satellite)
* All settings can be backed up and restored from a file
* Built-in OpenVPN server, very simple to set up
* Dynamic DNS support (for no-ip.com)
* One free host for no-ip.com (to be used with dynamic DNS)
* Bandwidth setting for each network (as of firmware version 2.4.0.114)


### Cons

* Expensive
* Access control with "Block new devices by default" bug
* The guest network is always open
* Long boot time (~3 min)
* No USB ports for external drives to turn it into a NAS

## Where to buy

The recommended price for SRK60 is **€ 426** (which is also for how much I've bought it), but at this moment it's [available for € 369](https://bit.ly/2nMIMM6) on {{< fl "bol.com" >}}.

> **Update:** the firmware version **2.5.0.108** [adds another](0543), fourth, Wi-Fi network.

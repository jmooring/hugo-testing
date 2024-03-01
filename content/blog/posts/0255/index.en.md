---
type: post
date: "2015-07-20T00:00:00Z"
title: "Fixing Samsung SSD 840 EVO performance issues in Linux"
tags:
    - gadgets
    - hardware
    - Samsung
    - Samsung 840 EVO
    - SSD
    - Ubuntu
    - yktools
image: "https://res.cloudinary.com/yktoo/image/upload/blog/vehbela1sh2q2506.jpg"
software: yktools
---

It's been a while since I [posted](0231) about replacing an iMac's HDD with a solid-state drive (SSD) Samsung 840 EVO, and also about [tuning your Ubuntu](0233) for it. Once done, you can enjoy the awesome overall responsiveness of your system and instantaneous application startup. And all that at an affordable price.

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/vehbela1sh2q2506.jpg" "Samsung 840 EVO." >}}

You might expect years of care-free enjoyment, but, like always, good things tend to come to an end. There have been quite a few articles about [read speed deterioration](http://www.extremetech.com/computing/190746-samsung-840-evo-has-serious-performance-bug-fix-on-the-way) in Samsung's 840 EVO series since the fall 2014. The adverse effect is caused by a technological flaw in TLC NAND memory cells, which makes their voltage levels drift over time. This, in turn, requires the controller to make numerous passes in order to read the data, hence the performance degradation. The pattern was quite clear: the older the file, the bigger the voltage drift and the slower the reading.

In my measurements, the read speed has plummeted from 280 to about 30  MB/s in ca. 10 months (I've replaced the SDD in August last year), i.e. almost ten times!

And what about Samsung? The manufacturer denied the problem at first, but later came up with a number of firmware updates to address it. However, as it [turned out](http://www.anandtech.com/show/8997/samsung-releases-statement-on-840-evo-performance-another-fix-is-in-the-works) a bit later, none of them could conclusively fix it. Eventually the company provided a rather crude solution in the form of an updated driver for Windows and Mac OS, which simply rewrites disk contents every now and then. What's worse, as many times before, Linux users were abandoned to their own *devices*.

I wasn't quite delighted at the tenfold read slowdown, and soon arrived at a solution. I needed a utility capable of rewriting a file in-place with the same data. Then I could rerun this tool against my Linux partition (Linux partitions are also files) once a couple of months.

## The rewrite-inplace program {#rewrite-inplace}

And here it is, a rather straightforward program called [rewrite-inplace](https://github.com/yktoo/yktools/blob/master/rewrite-inplace.c). Being written in plain vanilla C, it's compiled with:

    gcc rewrite-inplace.c -o rewrite-inplace

This will create an executable binary file `rewrite-inplace` in the current directory. The program takes a file name on the command line. It displays progress as the number of bytes rewritten; it can also be safely interrupted with **Ctrl+C** (since the data is never moved, it can be done at any moment).

The code uses low level I/O functions that eliminate buffering (which is of no use here anyway).

## How to use {#how-to-use}

The recommended sequence is as follows:

1. **Most important:** create backups of everything that has a slightest value for you.

   **I'm not responsible for loss of any file/drive/pet arising from the use of this program.**

2. Boot your system from a live Linux distro (e.g. Ubuntu). **Important:** I've only used the program with a 64-bit system; I can't guarantee it'll work with a 32-bit one.

3. Disable screensaver, screen lock, disk suspend etc.

4. Compile the program *on the system you've booted* (because its libraries can differ from the host OS):\
`gcc rewrite-inplace.c -o rewrite-inplace`

5. Look up partition names using GParted. **Utterly important:** all these partitions must be *unmounted*, which can be checked by their absence in the output of `mount`.

6. Run the program for each partition you want to process, as `root`, for instance:\
`sudo rewrite-inplace /dev/sda1   # This is just an example!`

7. Wait for the program to finish. Once done, verify disk's integrity using:\
`sudo fsck -f /dev/sda<partition>`

## My results {#my-results}

It took the program about three and a half hours to rewrite my 900 GB ext4 partition; judging by the byte counter, it was clearly accelerating towards the end (which is fair enough as the oldest files are expected to be at the beginning).

The result is that the read speed is now back to normal:

~~~
$ dd if=/very/old/file of=/dev/null bs=10M
97+1 records in
97+1 records out
1020327050 bytes (1.0 GB) copied, 3.62436 s, 282 MB/s

$ dd if=/another/old/file of=/dev/null bs=10M
95+1 records in
95+1 records out
1000000000 bytes (1.0 GB) copied, 3.56764 s, 280 MB/s

$ dd if=/new/file of=/dev/null bs=10M
1528+1 records in
1528+1 records out
16028794368 bytes (16 GB) copied, 56.9275 s, 282 MB/s
~~~

## Disclaimer {#disclaimer}

Once again, you use this program AT YOUR OWN RISK!

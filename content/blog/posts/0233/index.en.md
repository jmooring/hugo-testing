---
type: post
date: "2014-12-01T00:00:00Z"
title: "Tuning Ubuntu for SSD"
tags:
    - how-to
    - Linux
    - optimisation
    - SSD
    - Ubuntu
    - tips & tricks
image: "https://res.cloudinary.com/yktoo/image/upload/blog/z6jodg5ukriv0433.png"
---

In my [last post](0231) I told you about upgrading an iMac with a solid-state drive (SSD). These drives are very fast (read throughput is usually ca. 500 MB/s if connected via a 6 Gbps SATA III) and completely silent.

<!--more-->

They have downsides, too—a high price (which can hardly be addressed) and a limited lifetime, or, more precisely, number of write operations (number of read operations is virtually unlimited). Even though a modern SSD allows for millions of write-ops, it's sensible to extend its lifetime and increase overall system performance by some tuning.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/z6jodg5ukriv0433.png" >}}

[Debian website](https://wiki.debian.org/SSDOptimization) gives a number of good advices; I'll tell you about optimisations I've made to my system (Ubuntu 14.10 Utopic Unicorn).

## 1. Use ext4 {#step-1}

The {{< wiki "Ext4" "en" "ext4" >}} filesystem is the most mature and common in Linux world. Use it unless you have a strong reason not to.

## 2. Enough RAM {#step-2}

A sufficient amount of physical memory (RAM) is a must, because it:

* Reduces the need for swapping
* Allows to allocate a part of it for a RAM disk
* Makes file caching more efficient

I recommend to have at least 8 GB of RAM, 16 is even better.

## 3. High SSD capacity {#step-3}

If your drive is almost full, the system can experience big difficulties with allocating a free page. This leads to {{< wiki "Write_amplification" "en" "write amplification" >}} and can negatively impact SSD lifetime.

## 4. SSD mount options {#step-4}

I advise using the following mount options for SSD partitions:

* `noatime` — prevents updating of file metadata on each read operation (also recommended for a regular HDD).
* `nodiratime` — the same for directories.
* `commit=60` — sets a write delay interval to 60 seconds. All the changes accumulated during that period will be written in one go. However, that comes at a risk of data loss should the system go wild.

So the root directory entry in `/etc/fstab` could look like this:

~~~
UUID=12345678-90ab-cdef-0123-4567890abcde  /  ext4  errors=remount-ro,noatime,nodiratime,commit=60  0  1
~~~

The changes become effective after a reboot.

## 5. Weekly TRIM {#step-5}

The {{< wiki "Trim_(computing)" "en" "TRIM" >}} command helps the SSD to recycle discarded data. Ubuntu is shipped with a weekly scheduled TRIM out-of-the-box (using `/etc/cron.weekly/fstrim`). If you use another distro, make sure you have something like this.

## 6. RAM disk for temporary files {#step-6}

The `/tmp` directory is frequently used by programs for temporary storage. At the same time, it's automatically cleaned after every reboot. It makes it a perfect candidate for a RAM drive. Be aware, though, that some programs may want to put a really big file there (e.g. if you open a `.tar.gz` archive), and if the RAM drive runs out of space, it can result in an unpredictable behaviour.

To create a RAM drive, add the following to your `/etc/fstab`:

~~~
tmpfs  /tmp  tmpfs defaults,noatime,nodiratime,mode=1777,size=50%  0  0
~~~

The `size=50%` parameter limits the maximal drive size to half of the installed physical RAM (it's also the default). The change becomes effective after reboot.

## 7. RAM disk for log files {#step-7}

Program log files can be updated incredibly often, which definitely doesn't extend your SSD's life. If you don't mind your log files disappearing after each reboot, go ahead and offload them to a RAM drive.

To do that, add the following line to `/etc/fstab`:

~~~
tmpfs  /var/log  tmpfs  defaults,noatime,nodiratime,size=10000000  0  0
~~~

Size limit for the log partition is set here to 10 MB, which is usually well enough.

Next to that, you need to recreate the initial directory structure after each reboot. To have it done automatically, add the following to `/etc/rc.local`:

~~~
for d in fsck apt installer upstart dist-upgrade samba unattended-upgrades cups mpd hp lightdm; do
  [ -d /var/log/$d ] || mkdir /var/log/$d
done
~~~

## 8. Discourage swapping {#step-8}

To drastically reduce swap usage, add the line below to your `/etc/sysctl.conf`:

~~~
vm.swappiness=1
~~~

## 9. Browser cache on RAM disk {#step-9}

While you're surfing the web, your browser creates myriads of small files in its cache. Once moved into `/tmp`, which we placed on a RAM drive in step 6, it will be cleaned up after each reboot. I didn't notice this causing any inconvenience.

Let's take Chrome as an example:

~~~
# Create a cache directory below /tmp
mkdir -p /tmp/$USER/google-chrome-cache

# Remove the original cache dir along with all its contents
rm -rf ~/.cache/google-chrome

# Replace the dir with a symlink to the directory in /tmp
ln -s /tmp/$USER/google-chrome-cache ~/.cache/google-chrome
~~~

You'll also need to recreate the cache directory after each reboot. To do this, add the following piece of code to `/etc/rc.local` (don't forget to replace `alice bob claudia` with a space-separated list of actual users):

~~~
for u in alice bob claudia; do
  DIR=/tmp/$u/google-chrome-cache
  sudo -u $u -- sh -c "mkdir -p $DIR && chmod -R 700 /tmp/$u"
done
~~~

## And finally {#finally}

It's a good idea to do a periodical health-check of your SSD with:

~~~
sudo smartctl -a /dev/sda
~~~

You'll need to have the `smartmontools` package installed for that.

## See also {#see-also}

* [Fixing Samsung SSD 840 EVO performance issues in Linux](0255)

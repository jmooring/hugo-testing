---
type: post
date: "2019-11-04T19:52:12+01:00"
title: "Cloudinary is the new image hosting for yktoo.com"
tags:
    - website
    - Internet
    - blog
    - Cloudinary
image: "https://res.cloudinary.com/yktoo/image/upload/blog/lofwba8bki64dfhapgfk.png"
---

I've finally managed to migrate off the ever-worsening *Google Photos* onto [Cloudinary](https://cloudinary.com/invites/lpov9zyyucivvxsnalc5/l6ccxxrfxv0mdc6iewg8), a pretty convenient and—for the time being—free cloud image hosting provider.

Time will tell whether it was a clever choice, but I'm positive from what I've seen so far.

<!--more-->

## Flee Google Photos

Google keeps drifting away from the principles they once employed, when they provided useful, convenient, and non-bloated software products, into the realm of obscure marketing strategies solely meant to increase its market share. As a part of the drift they've killed quite a few popular services, such as *Reader*, *GTalk*, and *Google+*, simply because they were—in the management's opinion—not profitable or promising enough, greatly harming their users' loyalty.

Of course, *Photos*, Google's free image hosting, doesn't seem to be up for slaughtering *yet*, but the user experience keeps deteriorating as you're coerced into accessing it via the web interface. At the moment it's nearly impossible to get a direct, shareable link to an image. There is still a loophole in the form of *Google Album Archive*, but it's cumbersome to use and, arguably, not future-proof either.

Up to the last moment I've been using another loophole: Google's *Blogger* service, which also enables obtaining an external reference to the image, but there are caveats, too.

Firstly, it's not clear how long they're going to tolerate external websites "stealing" their bandwidth.

Secondly, it's terribly inconvenient as every image requires so many manual steps that you eventually start feeling reluctant to write posts altogether.

There are other problems, too.

## Cloudinary

The above were my incentives to search for alternatives.

I've finally landed on [Cloudinary](https://cloudinary.com/invites/lpov9zyyucivvxsnalc5/l6ccxxrfxv0mdc6iewg8), which offers a free plan that includes **25** so-called *credits*. Each credit is equivalent to **1 GB** of storage, **1 GB** of bandwidth, or **1000** transformations. A transformation is, for instance, creation of a scaled-down image version.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lofwba8bki64dfhapgfk.png" "The Cloudinary console." >}}

I had, however, no clue how much image storage I would need for **yktoo.com**. A while later this figure turned out to be just above one gigabyte.

## The migration

The huge advantage of Cloudinary compared to Google Photos is their easy-to-use {{< abbr "API" "Application Programming Interface" >}} available for a number of languages: Java, Python, PHP, JavaScript etc.

Long story short, I've rolled up my sleeves and embarked on writing a migration script with Python. The program, which I named [reimage](https://github.com/yktoo/yktoo.com/blob/master/_dev_/reimage), consists of the following four components:

* `Scanner` — scans all content files to retrieve image URLs;
* `Downloader` — downloads all images to the local machine;
* `Uploader` — uploads all images into the Cloudinary cloud;
* `Processor` — rewrites all image URLs to those from Cloudinary.

The program proved to be concise and snappy. The processing of some three thousand pages and **3700** images was a matter of minutes. As a free bonus I got a chance to fix all broken image links. There was almost no manual work necessary.

## My experience with Cloudinary

To be honest, it's ridiculous to compare **Cloudinary** with the **Google Photos + Blogger** bundle. One uploads images to Cloudinary simply by dragging a file onto the web page, and copies a shareable link with a single click afterwards.

It's also possible to upload images from other websites, Dropbox, Facebook etc.:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/oewitk5ezqalf8bno3a9.png" "Adding images to Cloudinary." >}}

Another powerful feature of the service is *transformations*. You can apply various filters, scale or convert images, add text or frames and so on—on the fly.

Cloudinary also provides support for videos but I'm currently not using this feature.

And the **25** credits limit can easily be expanded to **33** by tweeting a link and following them on Twitter. I expect that this should be well enough for my website for the time being.

> In case you're also curious about Cloudinary, I'll be grateful if you sign up using my **[referral link](https://cloudinary.com/invites/lpov9zyyucivvxsnalc5/l6ccxxrfxv0mdc6iewg8)**. This would mean more room for **yktoo.com** to grow.

---
type: post
date: "2019-12-13T16:01:40+01:00"
title: "Cloudinary content backup"
tags:
    - website
    - Internet
    - Cloudinary
    - backup
    - Python
image: "https://res.cloudinary.com/yktoo/image/upload/blog/vxh8pjqvldsi2pzcdsxm.png"
fulltextUrl: "https://yktoo.solutions/blog/2019/12/13-cloudinary-content-backup/"
---

Right after [migrating](0452) all my images onto [Cloudinary](https://cloudinary.com/invites/lpov9zyyucivvxsnalc5/l6ccxxrfxv0mdc6iewg8) I started to question myself: how am I going to make backups?

Nothing lasts forever, including clouds. Or, for example, one day you can lose your Cloudinary account and hence your access to the hosting altogether. Therefore the task of making a copy of your content is quite relevant.

<!--more-->

Paid Cloudinary plans offer the function of backing up into an *Amazon S3 bucket*. This feature is, however, not available on their free plan.

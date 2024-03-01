---
title: InfoPi
subtitle: Information server application for Raspberry Pi.
layout: product
icon: infopi-icon-64.png
software: infopi
weight: 50
active: true
codeRepoType: github
codeRepoPath: yktoo/infopi
licenses:
    - mit1
---

**InfoPi** is a single-page web application that displays various live data, like weather forecast and train departure times.

The application is developed with [Angular](https://angular.io/) and can be packaged with the [Electron](https://www.electronjs.org/) browser to make an all-in-one executable bundle.

My own implementation was crafted for *Raspberry Pi* running [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) and a full HD monitor (**1920×1080** pixels) in the portrait orientation, but it should run on any platform that Electron supports and properly adapt itself to a broad range of resolutions.

This is how the information display looks like:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wnaauxybvl1limkdx8mi.jpg" "Screenshot of the application" >}}

## Getting started

If you also want an own instance of InfoPi, check the [README on GitHub](https://github.com/yktoo/infopi/blob/master/README.md).

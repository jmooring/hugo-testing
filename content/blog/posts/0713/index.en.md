---
type: post
date: "2020-04-02T15:00:25+02:00"
title: "Version 2.0.0"
tags:
    - GitHub
    - InfoPi
    - Angular
    - Raspberry Pi
    - gadgets
    - home automation
    - diy
    - software
image: "https://res.cloudinary.com/yktoo/image/upload/blog/rs1f9dcy8kkwtsdsuld3.jpg"
series: infopi
software: infopi
---

My information kiosk application for *Raspberry Pi*, known as [InfoPi](/software/infopi), has finally been given a major makeover.

Four years ago I [posted](0278) about InfoPi's initial implementation. Let's see what the new version brings.

<!--more-->

## Second version

This second incarnation of *InfoPi* is almost a complete rewrite. To mention a few points:

* The code has been migrated from *AngularJS* to *Angular 9*.
* The Python backend (web server) is not needed anymore.
* The application can be bundled together with the [Electron](https://www.electronjs.org/) browser in a single `.deb` package, which can then be deployed to the Raspberry Pi using a single `dpkg` command.
* The web page has got a facelift.

## Display

Nowadays the display looks as follows:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wnaauxybvl1limkdx8mi.jpg" "InfoPi 2.0.0 screenshot." >}}

If one is to compare it to the previous version:

* The current weather details have moved upstairs.
* The {{< fl "Buienradar" >}} animation is shifted to the left.
* Right of the {{< fl "Buienradar" >}} there's a weather forecast now.
* Train and bus departures are now shown side-by-side.
* Crypto currency exchange rates are ditched as irrelevant.
* Added RSS news feed display.

I'm particularly proud of the all-new temperature graphs in the weather forecast tile (implemented with [Chart.js](https://www.chartjs.org/)):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1585833788/blog/hag7jpcjyxtfv7fdfjjf.jpg" "InfoPi's temperature chart." >}}

It shows the low and the high temperature boundaries as predicted by {{< fl "Buienradar" >}}. You can also see that the more you are into the future, the broader the confidence interval gets.

## Angular

As you perhaps know, when you migrate from *AngularJS* onto any subsequent *Angular* version, you have to reimplement the entire thing. Which I did.

I've also ditched the Python backend. Its only purpose was to circumvent the browser's {{< wiki "Cross-origin_resource_sharing" "en" "CORS" >}} policies, which forbade querying other domains (like NS API) directly from the web page.

In the latest *InfoPi* version I used a CORS proxy (such as [CORS Anywhere](https://cors-anywhere.herokuapp.com/)) for development and debugging. Of course, this way you run the risk of sharing your private API token with a third-party service.

In the production version, which runs in Electron, CORS enforcement is disabled at the browser level. Since *InfoPi* is a non-interactive system and it only displays data, there's no exposure arising from disabling the security.

## Want one!

Should you feel interested in making your very own instance of *InfoPi*, please refer to the application's [GitHub repository](https://github.com/yktoo/infopi).

The repo provides a sample config file (`src/environments/config.sample.ts`), which you'll need to copy and adjust to your heart's content. Simply follow the steps in README.

## TODO

Tests, more tests!

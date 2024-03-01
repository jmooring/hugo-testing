---
type: post
date: "2023-04-14T17:07:17+02:00"
title: "2.3.1"
tags:
    - Comentario
    - web
    - software
    - development
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png"
series: comentario
software: comentario
---

[Comentario](/software/comentario) version **[2.3.1](https://gitlab.com/comentario/comentario/-/releases/v2.3.1)** is released.

[Comentario](/software/comentario) is a lightweight, powerful, and free comment server for web pages written in Go and Angular.

## What's new

<!--more-->

* New Dashboard chart showing daily view and comment counts for the past **30** days across all domains of the user:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1681485503/blog/os19mq1xygamb6fxplfu.png" "New Dashboard with a chart for all user's domains." "border shadow" >}}
* Stats gathering has been optimised, which should deliver a noticeable performance gain, especially on domains with many views and comments.
* Fix: stats is displayed for a correct **30**-day period now; metric counters use the same colours as the chart.
* The embedded part:
    * Fix password reset for commenter.
    * Add password reset popup dialog (in prior versions, the user would be redirected to a dedicated page in the frontend).
    * Fix settings saving for OAuth users.
    * Setting `data-css-override="false"` disables CSS completely ([#10](https://gitlab.com/comentario/comentario/-/issues/10))
    * Don't fail Comentario load on CSS load failure ([#12](https://gitlab.com/comentario/comentario/-/issues/12))
    * Fix `data-*` attributes not working 
    * For developers: add `start` (watch) script for yarn
* Helm chart: drop `comentario.indexHtmlConfigMapName` config value as unused.
* The database schema still maintains a full compatibility with Commento 1.8.0.

## Demo

You can see Comentario in action on the [demo website](https://demo.comentario.app/).

## Resources

* [GitLab repository](https://gitlab.com/comentario/comentario)
* [Documentation](https://docs.comentario.app/)
* [Changelog](https://gitlab.com/comentario/comentario/-/blob/dev/CHANGELOG.md)

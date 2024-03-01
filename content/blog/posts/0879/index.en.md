---
type: post
date: "2023-10-09T09:41:58+02:00"
title: "3.0.0-rc2"
tags:
    - Comentario
    - web
    - software
    - development
    - pre-release
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png"
series: comentario
software: comentario
---

Two weeks [on](0877), the second pre-release version [Comentario 3.0.0-rc2](https://gitlab.com/comentario/comentario/-/releases/v3.0.0-rc2) is now available.

[Comentario](/software/comentario) is a fast and powerful free comment server for web pages, written in Go.

## What's new

<!--more-->

Apart from fixing annoying bugs, the only notable change in this version is the arrival of binary `.deb` and `.rpm` packages.

They allow for a [local Comentario install](https://edge.docs.comentario.app/en/installation/binary-package/) on your server or VM. The server will be run as a `systemd` service.

### Service config

The Comentario service settings come from the following two files:

* `/etc/comentario/comentario.conf` — the [static configuration](https://edge.docs.comentario.app/en/configuration/backend/static/);
* `/etc/comentario/secrets.yaml` — the [secrets](https://edge.docs.comentario.app/en/configuration/backend/secrets/).

In order to apply changed settings the service needs to be restarted:

```bash
sudo systemctl restart comentario.service
```

## Live Demo

You can see the new version, as well as its Administrative UI (login with email `admin@admin` and password `admin`), on the demo website:

{{< button "https://demo.comentario.app/" "Comments Live Demo" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Administrative UI Demo" "btn-primary mb-3" >}}

## Installation

If you're interested in trying out the new version, have a look at these documentation pages:

* [Installation](https://edge.docs.comentario.app/en/installation/).
* [Migration](https://edge.docs.comentario.app/en/installation/migration/).

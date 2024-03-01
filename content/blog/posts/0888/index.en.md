---
type: post
date: "2024-03-01T15:28:06+01:00"
title: "3.5.0"
tags:
    - Comentario
    - web
    - software
    - development
    - release
    - Go
    - Angular
    - PostgreSQL
    - SQLite
image: "https://res.cloudinary.com/yktoo/image/upload/v1709303351/blog/tf3czhpofujlxezoj0eh.jpg"
imageCredit: "AI-generated image."
series: comentario
software: comentario
---

New version [Comentario 3.5.0](https://gitlab.com/comentario/comentario/-/releases/v3.5.0) is just released!

[Comentario](/software/comentario) is a fast and powerful free comment server for web pages, written in Go.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1709303351/blog/tf3czhpofujlxezoj0eh.jpg" >}}

## What's new

<!--more-->

### SQLite support

The most important novelty in **3.5.0** is [out-of-the-box support](https://docs.comentario.app/en/installation/requirements/#sqlite) for local, file-based SQLite database. It's now easier than ever to try Comentario out: simply [install a binary package](https://docs.comentario.app/en/installation/binary-package/), and it's up and running straight away!

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1709307684/blog/igyms1own0oicxj45avl.gif" "Installing Comentario from a package." "border shadow" >}}

This will also work for a low-traffic website (it does for remark42, after all!), so you can save money and effort on running a separate PostgreSQL instance.

### Unauthenticated SMTP

Username and password became optional in [SMTP server settings](https://docs.comentario.app/en/configuration/backend/secrets/#email-sending). If not provided, Comentario will skip authentication when sending emails via SMTP.

### Other changes

* Embed: redesign the profile bar (use icons instead of text labels)
* Embed: Remove moderator toolbar
* Embed: hide sort bar when there's no comment
* Fix the comment count API endpoint ([#66](https://gitlab.com/comentario/comentario/-/issues/66))
* Upgrade the toolchain to Go 1.22, Hugo 0.123.6
* Documentation: provide [detailed instructions](https://docs.comentario.app/en/configuration/idps/) for configuring Facebook, Google, Twitter, GitHub, GitLab auth ([#67](https://gitlab.com/comentario/comentario/-/issues/67))
* Other docs updates

## Live Demo

You can see the new version, as well as its Administrative UI (login with email `admin@admin` and password `admin`), on the demo website:

{{< button "https://demo.comentario.app/" "Comments Live Demo" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Administrative UI Demo" "btn-primary mb-3" >}}

## Installation

If you're interested in trying out Comentario, you can start with these documentation pages:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).

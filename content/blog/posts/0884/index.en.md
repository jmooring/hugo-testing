---
type: post
date: "2023-12-19T18:51:25+01:00"
title: "3.2.0"
tags:
    - Comentario
    - web
    - software
    - development
    - release
    - Go
    - Angular
    - Christmas
image: "https://res.cloudinary.com/yktoo/image/upload/v1703008279/blog/btiqaq585r1whbvbdtcs.jpg"
series: comentario
software: comentario
---

As the Christmas draws nearer, another minor release [Comentario 3.2.0](https://gitlab.com/comentario/comentario/-/releases/v3.2.0) is out!

[Comentario](/software/comentario) is a fast and powerful free comment server for web pages, written in Go.

## What's new

<!--more-->

* New [configuration entry](https://docs.comentario.app/en/configuration/backend/dynamic/markdown.tables.enabled/) that enables tables in comments ([#37](https://gitlab.com/comentario/comentario/-/issues/37)).
* Another [configuration entry](https://docs.comentario.app/en/configuration/backend/dynamic/domain.defaults.comments.enablevoting/) allowing to disable voting on comments and hide the corresponding controls on the comment card ([#26](https://gitlab.com/comentario/comentario/-/issues/26)).
* Moderator notification emails now report the reason for the pending status:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1703009034/blog/ktmboeipgvvwpr1fimen.png" "Moderator notification email." "border shadow" >}}
* The Administration UI is now properly protected against CSRF attacks.
* Frontend has been upgraded to Angular **17**, backend to Go **1.21.5**.

See [CHANGELOG](https://gitlab.com/comentario/comentario/-/blob/master/CHANGELOG.md) for a complete list of changes.

## Live Demo

You can see the new version, as well as its Administrative UI (login with email `admin@admin` and password `admin`), on the demo website:

{{< button "https://demo.comentario.app/" "Comments Live Demo" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Administrative UI Demo" "btn-primary mb-3" >}}

## Installation

If you're interested in trying out Comentario, you can start with these documentation pages:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1702132791/blog/vhfwsdpiknlyvzehr2ed.jpg" >}}


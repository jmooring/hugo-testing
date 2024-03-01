---
type: post
date: "2024-02-12T11:05:56+01:00"
title: "3.4.0"
tags:
    - Comentario
    - web
    - software
    - development
    - release
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1707733008/blog/evbnsyjh49j6rsxxrbcx.jpg"
imageCredit: "AI-generated image."
series: comentario
software: comentario
---

New version [Comentario 3.4.0](https://gitlab.com/comentario/comentario/-/releases/v3.4.0) has been released into the wild.

[Comentario](/software/comentario) is a fast and powerful free comment server for web pages, written in Go.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707733008/blog/evbnsyjh49j6rsxxrbcx.jpg" >}}

## What's new

There's quite a bunch of improvements in this release.

<!--more-->

### Live update

[Live comment update](https://docs.comentario.app/en/kb/live-update/) is a feature that was [requested](https://gitlab.com/comentario/comentario/-/issues/9) one of the first.

If it's activated (which is the default), any comments rendered on a webpage will update automatically as soon as something changes. That includes new comments and replies, comment deletions, votes, and the sticky status.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707735208/blog/tlqnymgqp7rhz6tawdqn.gif" "Live update in action." "border shadow" >}}

The underlying technology used is [WebSockets](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API), which allows for a two-way realtime communication between the Comentario server and the browser.

There's also a number of related configuration settings:

* Live update can be disabled on a specific page with the use of the `live-update="false"` [attribute](https://docs.comentario.app/en/configuration/embedding/comments-tag/).
* Live update can be switched off entirely by passing `--no-live-update` to Comentario on the [command line](https://docs.comentario.app/en/configuration/backend/static/).
* You can limit the number of simultaneous websocket connections by using the `--ws-max-clients` [command-line option](https://docs.comentario.app/en/configuration/backend/static/). The default is **10,000**, which should suffice for most implementations.

### Editor toolbar

Also a long-expected feature, the new comment editor toolbar makes it easier to format text using [Markdown syntax](https://docs.comentario.app/en/kb/markdown/):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707736299/blog/pibra3v6kelxjjumzd8v.gif" "Editor toolbar in Comentario." "border shadow" >}}

Using these buttons, you can easily format the selection, insert a list, a quote, a table etc.

### Comment preview

On the animation above you can also see the `Preview` button. It's been released in **3.3.0**, but I didn't bother to write a post about it, so I mention it now.

### Comment anonymously

Another feature to appear with **3.3.0** was the removal of the `Comment anonymously` checkbox in favour of a new button in the Login popup:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707738659/blog/lknfv4mi0ts3hqr37mlx.png" "Comment anonymously button in the Login dialog." >}}

Now you don't have to tick off that checkbox every time; you'll only need to click the `Comment anonymously` button once, and all subsequent comments will be submitted anonymously.

Of course, you can change that at any moment by logging in explicitly.

### Collapse with border click

You can now hide comment replies by clicking on the left coloured border instead of using a dedicated button (functionality similar to Reddit comments):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707737052/blog/dhry9bvfgheufz37mprj.gif" "Collapse by border click." "border shadow" >}}

### Editing and deletion options

There are four new settings to finetune allowed comment operations (also [#61](https://gitlab.com/comentario/comentario/-/issues/61)):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707737589/blog/kaxvnxf50k9oi87i29fd.png" "New comment editing/deletion options." >}}

### Who deleted my comment?

When a comment gets deleted, users can now see whether it's done by the author or the moderator ([#62](https://gitlab.com/comentario/comentario/-/issues/62)).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1707737843/blog/ovisaxoyas1i1cdkyeer.png" "Deleted comment." "border" >}}

Due to security implications it's not always possible to give away that information, by Comentario will try to do its best.

### ARM builds

As of **3.4.0**, Comentario provides binary builds for both [32- and 64-bit ARM](https://docs.comentario.app/en/installation/requirements/) architectures ([#57](https://gitlab.com/comentario/comentario/-/issues/57)).

Ready-to-use packages and tarballs can be downloaded from the [Releases](https://gitlab.com/comentario/comentario/-/releases) page.

### Other changes

#### Changes in 3.4.0

* Admin UI: fix user link rendering for anonymous
* Admin UI: allow regular users to delete own comments
* Admin UI: show moderated and deleted user and timestamp in Comment properties
* Fix: Allow blockquote in Markdown
* Fix: Allow strikethrough text in Markdown
* Domain operations: reset comment/view counts on clearing domain ([#55](https://gitlab.com/comentario/comentario/-/issues/55))
* Embed: restyle icons
* Embed: show notice when no auth is configured for domain

#### Changes in 3.3.0

* Embed: persist sort direction and whether the user is anonymous locally
* Embed: add sort by upvotes, ascending
* Embed: hide sort by upvotes when voting is disabled ([#48](https://gitlab.com/comentario/comentario/-/issues/48))
* Embed: hide Edit profile for SSO user ([#45](https://gitlab.com/comentario/comentario/-/issues/45))
* New dynamic config items for controlling commenter signups ([#47](https://gitlab.com/comentario/comentario/-/issues/47))

## Live Demo

You can see the new version, as well as its Administrative UI (login with email `admin@admin` and password `admin`), on the demo website:

{{< button "https://demo.comentario.app/" "Comments Live Demo" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Administrative UI Demo" "btn-primary mb-3" >}}

## Installation

If you're interested in trying out Comentario, you can start with these documentation pages:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).

---
type: post
date: "2023-11-19T10:17:01+01:00"
title: "3.0.0"
tags:
    - Comentario
    - web
    - software
    - development
    - release
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1700385664/blog/seyqgwcnbnqk44r30lb6.png"
series: comentario
software: comentario
---

After seven months of development, **300** commits, and two pre-release versions ([1](0877), [2](0879)) I'm happy to announce that the final release [Comentario 3.0.0](https://gitlab.com/comentario/comentario/-/releases/v3.0.0) is now available.

[Comentario](/software/comentario) is a fast and powerful free comment server for web pages, written in Go.

## What's new

<!--more-->

Since the latest [pre-release](0879):

* For the first time in its history, the product has almost 100% end-to-end test coverage, which will guarantee every single change comes regression-free.
* Numerous bugfixes as a result of the previous item.
* The Dashboard has been redesigned: views and comments are now two distinct charts, pages and users feature new "background" charts:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1700385664/blog/seyqgwcnbnqk44r30lb6.png" "The renewed Comentario Dashboard." "border shadow" >}}
* Dropped support for the obsolete PostgreSQL **9.x**, added support for the version **16**.
* Domain properties: added protocol dropdown for choosing between `http://` ↔ `https://`.
* Profile: added website URL.
* Static config: added PostgreSQL version and the backend server time.
* Disqus import: fixed handling of "named anonymous" users.
* Embed: comment time is now a permalink to that comment.
* Embed: Markdown Help popup is replaced with a [doc link](https://docs.comentario.app/en/kb/markdown/).

Changes from the pre-release versions (since **2.3.1**):

* A whole new database model.
* Domain user [roles](https://docs.comentario.app/en/kb/permissions/roles/).
* System-wide [superuser](https://docs.comentario.app/en/kb/permissions/superuser/) privilege.
* [Static](https://docs.comentario.app/en/configuration/backend/static/) and [dynamic](https://docs.comentario.app/en/configuration/backend/dynamic/) Comentario configurations.
* User banning.
* Extended [moderation settings](https://docs.comentario.app/en/configuration/frontend/domain/moderation/) (flagging comments containing a link or an image, or those left by recently registered users).
* [Extensions](https://docs.comentario.app/en/configuration/frontend/domain/extensions/) checking comments for spam or toxic content ([Akismet](https://docs.comentario.app/en/configuration/frontend/domain/extensions/akismet/), [APILayer SpamChecker](https://docs.comentario.app/en/configuration/frontend/domain/extensions/api-layer-spam-checker/), [Perspective](https://docs.comentario.app/en/configuration/frontend/domain/extensions/perspective/)).
* Much more elaborate view statistics (only gathering, for now).
* Domain-wide page and comment lists.
* User avatars upload.
* Login via Facebook.
* Non-interactive [Single Sign-On](https://docs.comentario.app/en/configuration/frontend/domain/authentication/sso/).
* Images in comments.
* Setting for disabling links in comments.
* Setting for the front page content.
* Binary `.deb` and `.rpm` [packages](https://docs.comentario.app/en/installation/binary-package/), installing Comentario as a `systemd` service.

See [CHANGELOG](https://gitlab.com/comentario/comentario/-/blob/master/CHANGELOG.md) for a complete list of changes.

## Live Demo

You can see the new version, as well as its Administrative UI (login with email `admin@admin` and password `admin`), on the demo website:

{{< button "https://demo.comentario.app/" "Comments Live Demo" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Administrative UI Demo" "btn-primary mb-3" >}}

## Installation

If you're interested in trying out the new version, you can start with these documentation pages:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).

---
type: post
date: "2023-09-24T15:43:15+02:00"
title: "3.0.0-rc1"
tags:
    - Comentario
    - web
    - software
    - development
    - pre-release
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1695568197/blog/f2ynsaagus8veslakeuc.png"
series: comentario
software: comentario
---

After five months of intense development and **189** commits — which left no stone unturned in the [legacy code](0862) — the pre-release version [3.0.0-rc1](https://gitlab.com/comentario/comentario/-/releases/v3.0.0-rc1) of **Comentario** has been released.

[Comentario](/software/comentario) is a fast and powerful free comment server for web pages, written in Go.

## What's New

<!--more-->

In this version *nearly everything* is new, even though the look of the app has remained somewhat similar to version **2.x**.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1695567045/blog/rdyckksgb6lyymmvqjnl.gif" "Comentario 3.x Administration UI." "border shadow" >}}

### Database structure

The new database **has nothing in common** with its predecessor, the legacy Commento scheme. That means upgrading will require migrating the existing data.

The migration will be executed automatically on the first run of the new version. It was thoroughly tested on various data sets, however, due to many quirks of the legacy data model it's hard to guarantee it'll always be successful.

The good news is the migration mechanism in Comentario allows for repeated migration attempts, which enables potential fix releases. File an issue on [GitLab](https://gitlab.com/comentario/comentario/-/issues) should you encounter any problem migrating the old data.

After a successful migration the legacy database schema will be deleted, that's why having a **backup is absolutely critical**.

What are the benefits of the new model? It's much more consistent and better structured, it introduces numerous integrity constraints which will guarantee the data is in good shape. Moreover, it's heavily optimised for performance (I already [mentioned](0862#performance) database shortcomings in Commento before).

### Single User Registry

The new Comentario version introduces a completely overhauled user management. Contrary to Commento, which had two overlapping user lists (domain owners and commenters), Comentario has a single user registry, with roles assigned on a domain level.

The following roles are available:

* *Owner* — a domain owner;
* *Moderator* — a domain moderator;
* *Commenter* — a user who can write comments;
* *Read-only* — a user who can only read comments.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1695562983/blog/qiwf5tdw3u7blx7jdinh.png" "User manager page." "border shadow" >}}

Next to that, there's the *superuser* privilege, which gives a user administrative rights in the system. Superusers can edit, delete, or ban (also a new feature!) other users.

### Configuration

System [configuration](https://edge.docs.comentario.app/en/configuration/) is split into two parts: [static](https://edge.docs.comentario.app/en/configuration/backend/static/) and [dynamic](https://edge.docs.comentario.app/en/configuration/backend/dynamic/).

The former governs database, mail, and external identity provider settings.

The latter allows to edit sign-up and commenting settings. As the name suggests, those can be changed on-the-fly.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1695565324/blog/c0zhs0mforweeoz1tqxd.png" "Dynamic system configuration." "border shadow" >}}

### Statistics

There aren't many visible differences in terms of statistics yet, but under the hood Comentario collects way more data about its visitors. The data is also gathered on the page level, and not domain as before.

This data is depersonalised, so it introduces no privacy concerns, and includes:

* Visitor's IP address (only the first two bytes are stored by default);
* Used HTTP protocol version;
* Country;
* Browser name and version;
* OS name and version;
* Device type (PC, tablet, mobile phone, TV).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1695568197/blog/f2ynsaagus8veslakeuc.png" "Comentario Dashboard." "border shadow" >}}

Displaying and slicing-and-dicing of the new data points will be added in future releases.

### Moderation

Finally, domain-wide comment and page lists have arrived! Comments can be searched and filtered by status.

Domain moderation settings have been extended with options for comments with links or images, and comments by users registered recently or not having the required number of approved comments yet.

Comentario also supports [external spam/toxicity detection services](https://edge.docs.comentario.app/en/configuration/frontend/domain/extensions/), each configured separately per-domain:

* Akismet;
* APILayer;
* Perspective API.

Every flagged comment now provides an explanation for that status, for example:

> Pending moderation: Domain policy requires moderation on comments by anonymous users

### Other

* Uploaded user avatars.
* Login via Facebook.
* Non-interactive (background) [Single Sign-On](https://edge.docs.comentario.app/en/configuration/frontend/domain/authentication/sso/).
* Images in comments (with an option for disabling it).
* Option for disabling links in comments.
* Setting for replacing the home page content.
* Comments are now embedded with a [web component tag](https://edge.docs.comentario.app/en/configuration/embedding/comments-tag/) `<comentario-comments>`. It can further be configured by setting its attributes.

… and tons of other fixes and improvements.

## Live Demo

Since it's a pre-release, it isn't rolled out to this website yet, but you can see it in action and play with it on the demo website:

{{< button "https://demo.comentario.app/" "View Live Demo" "btn-primary mb-3" >}}

You can also try Comentario's Administrative UI: just log in with the email `admin@admin` and password `admin`.

{{< button "https://edge.comentario.app/" "View Administrative UI" "btn-primary mb-3" >}}

## Migration

If you're interested in trying out the new version (don't use it in production yet!), please read the [Migration Guide](https://edge.docs.comentario.app/en/installation/migration/) first.

## What's next

Currently I'm busily updating [docs](https://edge.docs.comentario.app/) and writing end-2-end tests covering the new functionality. Which is quite a bit of work.

Once I feel confident about the quality of the new code, I'll make a final release.

Beta-testers are welcome! Please file bugreports and feature requests in the [issue tracker](https://gitlab.com/comentario/comentario/-/issues).

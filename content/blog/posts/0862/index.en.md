---
type: post
date: "2023-04-07T15:45:31+02:00"
title: "Commento is dead. Long live Comentario!"
tags:
    - cloud
    - Commento
    - Comentario
    - Disqus
    - Docker
    - Linux
    - web
    - software
    - software development
    - Go
image: "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png"
series: comentario
software: comentario
---

I've been using Commento, the web comment engine, for quite a while on this website, as well as some other sites. I even [wrote a post](0350) on running Commento with Docker Compose. Commento used to be a free and lightweight alternative to Disqus, Facebook Comments, and such.

But Commento is now dead, which is why I decided to relaunch it — under the new name of **[Comentario](https://comentario.app/)** (yes, with one *m*)!

<!--more-->

## Commento is abandoned

At some point, Commento ceased to evolve. There was no single change over the last two years, and no significant improvement even long before that. The project is obviously abandoned, with its ever-growing [list of issues](https://gitlab.com/commento/commento/-/issues).

One day I felt I've had enough of Commento quirks, so I decided to develop an alternative (just like I did with the [Sound Switcher Indicator](/software/sound-switcher-indicator) and [Ymuse](/software/ymuse), which worked out just fine).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png" >}}

## Meet Comentario

So I've started off on a long journey of reimplementing the comment server.

I named it {{< fl "Comentario" >}} — which is Spanish for "comment" — thus relating it to {{< fl "Commento" >}}, having the same meaning in Italian.

**[Comentario](https://comentario.app/)** is, in simple terms, a **complete rewrite** of Commento. Its versioning [started](https://gitlab.com/comentario/comentario/-/releases) from **2.0.1** (building upon the version 1.8.0 of its predecessor).

Comentario has got all its three constituent part reimplemented:

* Backend (Go)
* Embeddable part (Typescript transpiling to pure ES6 Javascript)
* Administration UI (Angular)

As of its latest [release 2.3.0](https://gitlab.com/comentario/comentario/-/releases/v2.3.0) it still maintains compatibility with the original Commento database, but the whole codebase is totally reworked.

## What's different?

So how is Comentario different from its predecessor Commento?

Obviously, there's a huge list of changes resulting from the amount of work done.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1680877677/blog/qyoppijmu3zffyk9usah.png" "Comentario Administration UI." "border shadow" >}}

At this moment, Comentario offers at least the same functionality as Commento, or more. Here are some notable differences:

* Comentario is running the latest and greatest software versions: Go 1.20, Postgres 15.x (older version supported down to 9.6), ES6 and so on.
* Resolved all issues with OAuth identity providers (Google, GitHub, GitLab, Twitter), including user avatars.
* The **embeddable part**:
    * Code is modernised and reimplemented using Typescript.
    * Layouts are optimised for all screen sizes.
    * Login, Signup, and Markdown Help are made popup dialogs.
    * Login, Signup, and Comment Editor are using HTML `form` element and proper `autocomplete` attribute values, which makes them compatible with password managers.
    * Improvements for WCAG (accessibility), including keyboard navigation.
    * Subtle animations are added.
    * Keyboard-enabled dialogs (<kbd>Escape</kbd> cancels, <kbd>Enter</kbd> (<kbd>Ctrl</kbd><kbd>Enter</kbd> in a multiline field) submits the dialog).
    * Tons of other issues and inconsistencies have been fixed.
* The **Administration UI**:
    * Support for all screen sizes, from mobiles to XL desktops;
    * Multilingual UI support;
    * New dashboard screen showing statistics across all your domains;
    * Proper authentication based on HTTP-only cookies;
    * Proper input validation;
    * Domain clone function;
    * Domain data export downloads the dump file instead of sending an email;
* Automatic end-to-end testing using Cypress to prevent regressions (in progress).

## Performance

In all honesty, Commento's data model was immature and weird. It employed bizarre design decisions, resulting in huge performance penalties.

One of its key functions, which loads comment threads, used a database query to load all comments for a page, then *one query for each commenter* to load their data, and additionally *one query for each comment* to fetch comment votes. This was — to put it mildly — simply horrible. Say, you had a page with **500** comments by **100** commenters: loading comments for this single page would trigger **601** SQL queries!!

Comentario fixed that madness by loading *all comments, votes, and commenters in a single query*.

There were numerous other places where database interaction was sub-optimal, albeit not as strikingly as in the one mentioned above. Comentario also addressed some resource leaks, implemented robust error handling, and resolved numerous security and input validation omissions.

Up to the current Comentario [version **2.3.0**](https://gitlab.com/comentario/comentario/-/releases/v2.3.0) the database structure remains unchanged; I've decided to rather concentrate on improving the server and the client code first, but the data model is definitely next on my priority list.

## Moving on

This is just the beginning as I plan to add lots of new cool features (missing in Commento).

Feel free to:

* Leave a comment [below](#blog-post-comments) (using Comentario, of course!)
* See Comentario in action on [this demo website](https://demo.comentario.app/)
* Browse [Comentario documentation](https://docs.comentario.app/)
* File an issue [on GitLab](https://gitlab.com/comentario/comentario)
* Download and install [Comentario 2.3.0](https://gitlab.com/comentario/comentario/-/releases/v2.3.0)

Stay tuned!

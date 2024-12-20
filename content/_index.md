+++
title = 'Hugo Forum Topic #52829'
linkTitle = 'Home'
date = 2024-12-20T13:12:52-08:00
draft = false
details = 'https://discourse.gohugo.io/t/52829'
description = "Hugo 0.140 and pagination is broken"
+++

In [v0.125.0](https://github.com/gohugoio/hugo/releases/tag/v0.125.0) we fixed a bug where, unlike [`urls.AbsLangURL`] and [`urls.RelLangURL`], the [`urls.AbsURL`] and [`urls.RelURL`] functions did not return an error when unable to cast the argument to a string. They checked for an error, but didn't tell you about it.

[`urls.AbsURL`]: https://gohugo.io/functions/urls/absurl/
[`urls.RelURL`]: https://gohugo.io/functions/urls/relurl/
[`urls.AbsLangURL`]: https://gohugo.io/functions/urls/abslangurl/
[`urls.RelLangURL`]: https://gohugo.io/functions/urls/rellangurl/

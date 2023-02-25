+++
title = 'Hugo Forum Topic #43127'
linkTitle = 'Home'
date = 2023-02-24T15:49:35-08:00
draft = false
details = 'https://discourse.gohugo.io/t/43127'
description = "How to connect infinite scrolling to a page on hugo?"
+++

This example uses the [Infinite Ajax Scroll] JavaScript library to enable infinite scrolling on your Hugo site. See the [documentation].

[documentation]: https://docs.infiniteajaxscroll.com/
[Infinite Ajax Scroll]: https://github.com/metafizzy/infinite-scroll

Posts 37 through 40 demonstrate the need for image and link render hooks to properly resolve image and link destinations in markdown. Why?

- The site is served from a subdirectory, but the link destinations in markdown are relative to the root of the webserver.
- The image destinations in markdown are relative to each page.

Files of interest:

- config.toml
- assets/js/main.js
- assets/scss/_infinte-ajax-scroll.scss
- layouts/_default/_markup/render-image.html
- layouts/_default/_markup/render-link.html
- layouts/_default/home.html
- layouts/_default/single.inner.html
- layouts/partials/render-content.html
- i18n/en.toml

Scroll down to see it in action...

---

+++
title = 'Home'
date = 2025-09-28T06:42:29-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/8045'
description = "Add auto-prefixing option to Goldmark's footnote extension"
+++

This test site showcases two methods for handling footnotes when content from multiple pages is rendered onto a single page:

- [Books](/books) section: Footnotes for each page are rendered immediately following that page's content. This approach requires Hugo [v0.151.0][] or later.

- [Films](films) section: Footnotes for all pages are collected and rendered together after all content has been displayed. This approach requires Hugo [v0.117.0][] or later.

The specific requirements for implementing each of these approaches are detailed at the top of their respective section pages.

[v0.117.0]: https://github.com/gohugoio/hugo/releases/tag/v0.117.0
[v0.151.0]: https://github.com/gohugoio/hugo/releases/tag/v0.151.0

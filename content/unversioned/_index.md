+++
title = 'Home'
date = 2026-11-20T09:44:03-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/15620'
description = "Embedded link and image render hooks are not enabled for projects with multiple versions"
+++

This project defines three versions, v1, v2, and v3, and one language. It does not define a `languages` key.

Version|Source of /s1/p1|Image used by the page
:--|:--|:--
v1|`content/v1/s1/p1`|a.jpg (v1 image)
v2|`content/v2/s1/p1`|a.jpg (v2 image)
v3|`content/v2/s1/p1` (no v3 content)|a.jpg (v2 image)

The v1 and v2 images have the same name, but different content. Hugo publishes each image once, with the newest version that uses it:

- The v1 image to `public/v1/s1/p1/a.jpg`
- The v2 image to `public/v3/s1/p1/a.jpg`

Hugo does not enable the embedded link and image render hooks, so Markdown destinations are not resolved to those copies:

- In v1 and v3, the image and link work.
- In v2, the image is broken and the link returns a 404 error, because there is no `public/v2/s1/p1/a.jpg`.

Any of these changes fixes the v2 page:

- Set `markup.goldmark.renderHooks.image.useEmbedded` and `markup.goldmark.renderHooks.link.useEmbedded` to `always`.
- Set `markup.goldmark.duplicateResourceFiles` to `true`.
- Define a `languages` key, even with a single language.

+++
title = 'Hugo Forum Topic #42343'
date = 2023-01-09T12:53:57-08:00
draft = false
details = 'https://discourse.gohugo.io/t/42343'
description = "Shortcodes within shortcodes not rendering"
+++

The test page includes content with headings, and calls the snippet shortcode. The snippet includes some content with headings, and calls the note shortcode.

Files of interest:

- layouts/_default/single.html
- layouts/partials/toc.html (contains documentation in header)
- assets/scss/_toc.scss

By generating the table of contents _after_ Hugo renders the content, we can:

- Have complete control over HTML structure and attributes ([#8338](https://github.com/gohugoio/hugo/issues/8338))
- Modify the heading `id` attribute in a heading render hook ([#8383](https://github.com/gohugoio/hugo/issues/8383))
- Control the start and end levels at the page level and/or site level ([#9329](https://github.com/gohugoio/hugo/issues/9329))
- Include raw HTML heading elements in our markdown
- Generate HTML heading elements from shortcodes invoked with the `{{</*  */>}}` notation
- Detect heading elements without `id` attributes (warning)
- Detect duplicate heading `id` attributes (error)
- Avoid other known issues such as [#4735], [#6081], [#7128], and [#7158]

[#4735]: https://github.com/gohugoio/hugo/issues/4735
[#6081]: https://github.com/gohugoio/hugo/issues/6081
[#7128]: https://github.com/gohugoio/hugo/issues/7128
[#7158]: https://github.com/gohugoio/hugo/issues/7158

Comparing performance (average of 5 runs) using a 1000 page site (all pages are identical to the test page on this test site):

- With the `.TableOfContents` method: 737 ms
- With the toc partial: 877 ms

The difference is 140 ms, about a 19% increase in build time.

If the site includes image processing, the build time will increase, but the difference between the two TOC methods will decrease as a percentage of total build time.

For most sites this is not a significant performance hit.

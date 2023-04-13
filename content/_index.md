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
- layouts/partials/toc-parse-content.html (documentation in header)
- assets/scss/_toc.scss

Reference: <https://www.veriphor.com/articles/tables-of-content/>

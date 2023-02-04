+++
title = 'Hugo Forum Topic #42794'
date = 2023-02-04T15:25:09-08:00
draft = false
details = 'https://discourse.gohugo.io/t/42794'
description = "Taxonomy and sitemap and noindex"
+++

There are two terms in the tags taxonomy:

- has-index-md
- does-not-have-index-md

Both tags are assigned to [Post 1](/posts/post-1).

The content structure looks like this:

    content/
    ├── posts/
    │   └── post-1.md
    ├── tags/
    │   └── has-index-md/
    │       └── _index.md
    └── _index.md

See menu at top of page.

Files of interest:
- `layouts/_default/sitemap.xml`
- `layouts/_default/baseof.html` (within the `head` element)

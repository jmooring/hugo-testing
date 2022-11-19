+++
title = 'Hugo Forum Topic #41532'
date = 2022-11-18T23:14:46-08:00
draft = false
details = 'https://discourse.gohugo.io/t/41532'
description = "Appending a page to a page collection: append or union?"
weight = 2000
+++

Run this command repeatedly and watch the output vary from one build to the next:

```bash
hugo && grep h3 public/section-1/section-1-2/section-1-2-1/page-13/index.html
```

You should see headings for:

- Page 04
- Page 05
- Page 06
- Page 13 (should be highlighted)

If you use the `union` function instead of the `append` function to append a page to page collection, the problem goes away. See lines 22 and 23 in /layouts/_default/single.html.

+++
title = 'Hugo Forum Topic #44080'
linkTitle = 'Home'
date = 2023-04-26T10:35:01-07:00
draft = false
details = 'https://discourse.gohugo.io/t/44080'
description = "Setting lastmod date for a page when list updated"
+++

This site uses the default [front matter configuration], and `enableGitInfo` is `true`.

```toml
enableGitInfo = true

[frontmatter]
date = ['date', 'publishDate', 'lastmod']
expiryDate = ['expiryDate']
lastmod = [':git', 'lastmod', 'date', 'publishDate']
publishDate = ['publishDate', 'date']
```

[front matter configuration]:https://gohugo.io/getting-started/configuration/#configure-front-matter

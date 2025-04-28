+++
title = 'Hugo Forum Topic #54538'
linkTitle = 'Home'
date = 2025-04-28T08:57:44-07:00
draft = false
details = 'https://discourse.gohugo.io/t/54538'
description = "Linking to a post with a URL different from its filename"
+++

The content structure for this site is:

```text
content/
├── posts/
│   ├── 2024/
│   │   ├── post-1/
│   │   │   └── index.md
│   │   └── post-2/
│   │       └── index.md
│   ├── 2025/
│   │   ├── post-3/
│   │   │   └── index.md
│   │   └── post-4/
│   │       └── index.md
│   └── _index.md
└── _index.md
```

The published structure of this site is:

```text
public/
├── css/
│   └── main.min.7cb63e071be121b25c621b61371cac38aeeeb83a69d48f035192ad3812d49804.css
├── posts/
│   ├── post-1/
│   │   └── index.html
│   ├── post-2/
│   │   └── index.html
│   ├── post-3/
│   │   └── index.html
│   ├── post-4/
│   │   └── index.html
│   └── index.html
├── favicon.ico
└── index.html
```

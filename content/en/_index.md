+++
title = 'Hugo Forum Topic #48029 (en)'
linkTitle = 'Home'
date = 2024-01-29T06:31:22-08:00
draft = false
details = 'https://discourse.gohugo.io/t/48029'
description = 'Crafting and configuring a "serverless" site (multilingual multi-host)'
+++

To build and view the site in "serverless" mode:

```text
rm -rf public && hugo -e serverless && google-chrome public/en/index.html 
```

To build and view the site in "server" mode:

```text
hugo server
```

To build the production site:

```text
hugo
```

---

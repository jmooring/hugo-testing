+++
title = 'Hugo Forum Topic #35825'
linkTitle = 'Home'
date = 2024-01-29T06:31:22-08:00
draft = false
details = 'https://discourse.gohugo.io/t/35825'
description = "View site without a server (monolingual) "
+++

To build and view the site in "server" mode:

```text
hugo server
```

To build and view the site in "serverless" mode:

```text
rm -rf public/ && hugo -e serverless && google-chrome public/index.html 
```

To build the production site:

```text
hugo
```

---

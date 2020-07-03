+++
title = "Post"
date = 2020-07-03T11:04:32-04:00
draft = false
+++
This is content/post/_index.md

This list is built with:

```
{{ range first 6 (where .Paginator.Pages ".Draft" false) }}
```

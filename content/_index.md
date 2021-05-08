+++
title = "Hugo Forum Topic #32761"
date = 2021-05-08T06:35:22-07:00
draft = false
details = "https://discourse.gohugo.io/t/32761"
description = "Order of the rss feed"
+++

Visit the [post](/post/) list page to see the results of:

```
{{ range (where .Pages "Params.options.unlisted" "eq" false).ByPublishDate.Reverse }}
```

---

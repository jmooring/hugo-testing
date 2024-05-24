+++
title = 'Test 1 - Pass'
date = 2024-05-24T14:23:13-07:00
draft = false
layout = 'test-1'
+++

This works as expected (border is ~ 50% opaque blue):

```go-html-template {style=dracula}
{{ $i := resources.Get "images/a.jpg" }}
{{ $filters := slice
  (images.Process "resize x200 png")
  (images.Padding 20 "#00f7")
}}
{{ $i = images.Filter $filters $i }}
<img src="{{ $i.RelPermalink }}" width="{{ $i.Width }}" height="{{ $i.Height }}" alt="">
```

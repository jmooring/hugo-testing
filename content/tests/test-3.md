+++
title = 'Test 3 - Pass'
date = 2024-05-24T14:23:14-07:00
draft = false
layout = 'test-3'
+++

But this (convert to webp using construct from test 2) works fine:

```go-html-template {style=dracula}
{{ $i := resources.Get "images/a.jpg" }}
{{ $i = $i.Resize "x200 webp" }}
{{ $filters := slice
  (images.Padding 20 "#00f7")
}}
{{ $i = images.Filter $filters $i }}
<img src="{{ $i.RelPermalink }}" width="{{ $i.Width }}" height="{{ $i.Height }}" alt="">
```

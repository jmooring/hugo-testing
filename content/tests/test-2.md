+++
title = 'Test 2 - Fail'
date = 2024-05-24T14:23:14-07:00
draft = false
layout = 'test-2'
+++

This does not work as expected (border is some other transparent color):

```go-html-template {style=dracula}
{{ $i := resources.Get "images/a.jpg" }}
{{ $i = $i.Resize "x200 png" }}
{{ $filters := slice
  (images.Padding 20 "#00f7")
}}
{{ $i = images.Filter $filters $i }}
<img src="{{ $i.RelPermalink }}" width="{{ $i.Width }}" height="{{ $i.Height }}" alt="">
```

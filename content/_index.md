+++
title = 'Hugo GitHub Issue #7686'
date = 2022-06-02T11:11:22-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/7686'
description = "Upper case letters in path causing match to fail"
+++

With this structure...

```text
assets/
└── images/
    └── ABC/
        └── kitten.jpg
```

Neither of the following constructs is able to find `assets/images/ABC/kitten.jpg`

```go-html-template
{{ with resources.GetMatch "images/abc/*" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ else }}
  {{ warnf `resources.GetMatch "images/abc/*" returned zero images` }}
{{ end }}

{{ with resources.GetMatch "images/ABC/*" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ else }}
  {{ warnf `resources.GetMatch "images/ABC/*" returned zero images` }}
{{ end }}
```

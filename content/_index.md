+++
title = 'Hugo Forum Topic #52717'
linkTitle = 'Home'
date = 2024-12-10T20:31:30-08:00
draft = false
details = 'https://discourse.gohugo.io/t/52717'
description = "Pulling content from of Branch Bundles and Leafbundles"
+++

```go-html-template {style=native}
{{ with site.GetPage "/laws/union/environment" }}
  {{ with .Pages.ByDate.Reverse | first 10 }}
    <ul>
      {{ range . }}
        <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
      {{ end }}
    </ul>
  {{ end }}
{{ end }}
```

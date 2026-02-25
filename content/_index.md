+++
title = 'Home'
date = 2026-02-25T01:17:57-08:00
draft = false
details = 'https://discourse.gohugo.io/t/56763'
description = "Is it possible to render links in a highlighted json string?"
+++

 This works:

```go-html-template
{{ $json := .Site.Data.bio | jsonify (dict "indent" "  " "noHTMLEscape" "true") }}
{{ $hl := transform.Highlight $json "json" }}
{{ strings.Replace $hl "\\&#34;" `"` | htmlUnescape | safeHTML }}
```

&nbsp;

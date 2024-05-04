+++
title = 'Hugo Forum Topic #49633'
linkTitle = 'Home'
date = 2024-05-04T08:49:07-07:00
draft = false
details = 'https://discourse.gohugo.io/t/49633'
description = "Copy to clipboard from code highlight context"
+++

## No line numbers

```go-html-template {linenos=false copy=true}
{{ with resources.Get "sass/main.scss" }}
  {{ $opts := dict "targetPath" "css/main.css" }}
  {{ with . | toCSS $opts }}
    {{ if eq hugo.Environment "development" }}
      <link rel="stylesheet" href="{{ .RelPermalink }}">
    {{ else }}
      {{ with . | minify | fingerprint }}
        <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
      {{ end }}
    {{ end }}
  {{ end }}
{{ end }}
```

## Line numbers inline

```go-html-template {linenos=inline copy=true}
{{ with resources.Get "js/main.js" }}
  {{ if eq hugo.Environment "development" }}
    {{ with . | js.Build }}
      <script src="{{ .RelPermalink }}"></script>
    {{ end }}
  {{ else }}
    {{ $opts := dict "minify" true }}
    {{ with . | js.Build $opts | fingerprint }}
      <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
    {{ end }}
  {{ end }}
{{ end }}
```

## Line numbers in table cell

```go-html-template {linenos=table copy=true}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
```

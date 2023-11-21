+++
title = 'Hugo Forum Topic #43731'
linkTitle = 'Home'
date = 2023-11-21T09:07:03-08:00
draft = false
details = 'https://discourse.gohugo.io/t/43731'
description = "Deprecate built-in instagram shortcode?"
+++

## Shortcode (display caption)

```text
{{</* instagram CzmWE9Lv_V6 true */>}}
```

{{< instagram CzmWE9Lv_V6 true >}}

## Shortcode (do not display caption)

```text
{{</* instagram CzmWE9Lv_V6 */>}}
```

{{< instagram CzmWE9Lv_V6 >}}

## Partial (do not display caption)

```go-html-template
{{ range site.Data.feeds.instagram }}
  {{ partial "instagram" (dict "id" . "displayCaption" false) }}
{{ end }}
```

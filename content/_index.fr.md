+++
title = 'Hugo Forum Topic #48697 (fr)'
linkTitle = 'Home'
date = 2024-03-07T11:16:02-08:00
draft = false
details = 'https://discourse.gohugo.io/t/48697'
description = "Get a translated language name from its code"
+++

language switcher code

```go-html-template
{{ if .Translations }}
  {{ $targetLang := .Language.LanguageCode }}
  <ul>
    {{ range .AllTranslations }}
      {{ $sourceLang := .Language.LanguageCode }}
      <li><a href="{{ .RelPermalink }}">{{ lang.LanguageName $sourceLang $targetLang }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```

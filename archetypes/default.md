---
title: {{ replace .File.ContentBaseName "-" " " | strings.FirstUpper }}
date: {{ .Date }}
draft: false
params:
  location:
    latitude:
    longitude:
---

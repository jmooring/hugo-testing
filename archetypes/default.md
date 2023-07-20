---
title: {{ replace .File.ContentBaseName "-" " " | strings.FirstUpper }}
date: {{ .Date }}
draft: false
authors:
- kfrog
- mpiggie
---

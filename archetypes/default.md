---
type: post
date: "{{ .Date }}"
title: "{{ replace .Name "-" " " | title }}_POST_NAME_HERE"
tags:
    - {{ cond (eq .Site.Language.Lang "ru") "Нидерланды" "Netherlands" }}
image: "IMAGE_HERE"
imageCredit: "{{ cond (eq .Site.Language.Lang "ru") "Фото:" "Photo by" }} IMAGE_CREDIT."
#series:
---

...TEXT...

<!--more-->

...MORE...TEXT...
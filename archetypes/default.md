---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
authors:
- Author Name
resources:
- name: cover
  src: images/image.jpg
  title: "Cover image"
- name: twitterimg
  src: images/image-twitter.jpg
- name: ogimage
  src: images/image-facebook.jpg
tags:
- php
---

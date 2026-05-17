---
title: 'Home'
date: 2026-05-17T10:42:34-07:00
draft: false
details: 'https://discourse.gohugo.io/t/57153'
description: 'Only September rendering with date format "Jan"'
---

The formatted dates below are rendered with this template code:

    {{ .Date | time.Format "Jan 2006" }}

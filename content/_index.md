+++
title = 'Hugo Forum Topic #48181'
linkTitle = 'Home'
date = 2024-02-08T14:31:11-08:00
draft = false
details = 'https://discourse.gohugo.io/t/48181'
description = "Live reloading css does not work with cached disabled"
+++

Start `hugo server` then modify assets/a.css.

The page does not refresh. This seems to be related to `resources.Concat`.

+++
title = 'Hugo GitHub Issue #8888'
date = 2022-01-29T16:44:12-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/8888'
description = "Cascade _target.kind not accepting glob pattern"

[[cascade]]
p1 = 'p1'
  [cascade._target]
  kind = 'page'
[[cascade]]
p2 = 'p2'
  [cascade._target]
  kind = 'section'
[[cascade]]
p3 = 'p3'
  [cascade._target]
  kind = '{page,section}'
+++

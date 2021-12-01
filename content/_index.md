+++
title = 'Hugo GitHub Issue #9226'
date = 2021-12-01T10:05:34-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/9226'
description = 'figure shortcode respects height, but ignores width'
+++

Image is 600x400.

`{{</* figure src="/a.jpg" */>}}`

{{< figure src="/a.jpg" >}}

`{{</* figure src="/a.jpg" width="300" height="200" */>}}`

{{< figure src="/a.jpg" width="300" height="200" >}}

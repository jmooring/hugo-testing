+++
title = 'Hugo Forum Topic #47574'
linkTitle = 'Home'
date = 2023-12-23T16:32:55-08:00
draft = false
details = 'https://discourse.gohugo.io/t/47574'
description = "Add an Overlay to all images in leaf- and page-bundles"
+++

```text
![kitten](a.jpg)
```

![kitten](a.jpg)

```text
{{</* picture
  alt="kitten"
  overlay="images/logo-512x512.png"
  overlayAnchor="topright"
  overlayPadding=0.04
  overlayWidth=0.2
  src="b.jpg"
  width=400
*/>}}
```

{{< picture
  alt="kitten"
  overlay="images/logo-512x512.png"
  overlayAnchor="topright"
  overlayPadding=0.04
  overlayWidth=0.2
  src="b.jpg"
  width=600
>}}

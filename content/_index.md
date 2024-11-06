+++
title = 'Hugo Forum Topic #52305'
linkTitle = 'Home'
date = 2024-11-06T09:06:51-08:00
draft = false
details = 'https://discourse.gohugo.io/t/52305'
description = "Create an image sprite from images in the assets directory"
+++

```text
This is an {{</* sprite id=a class="inline-block" */>}} inline sprite frame.
```

This is an {{< sprite id=a class="inline-block" >}} inline sprite frame.

```text
This is a {{</* sprite id=b class="block" */>}} block sprite frame.
```

This is a {{< sprite id=b class="block" >}} block sprite frame.

```text
This is also a {{</* sprite id=c */>}} block sprite frame.
```

This is also a {{< sprite id=c >}} block sprite frame.

And this is the HTML that is in layouts/_default/home.html:

```html
<div id="a"></div>
<div id="b"></div>
<div id="c"></div>
<div id="d"></div>
<div id="e"></div>
<div id="f"></div>
```

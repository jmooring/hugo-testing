+++
title = 'Hugo GitHub Issue #13286'
linkTitle = 'Home'
date = 2025-01-20T20:48:18-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/13286'
description = "Hugo 0.141.0 strips apostrophes from image alt strings"
+++

```markdown
![A's and B's](some-image.png)
```

Commonmark says we should do this:

```html
<p><img src="some-image.png" alt="A's and B's" /></p>
```

GoldMark says we should do this when the typographer extension is disabled:

```html
<p><img src="some-image.png" alt="A's and B's"></p>
```

GoldMark says we should do this when the typographer extension is enabled:

```html
<p><img src="some-image.png" alt="A&rsquo;s and B&rsquo;s"></p>
```

## Embedded image render hook disabled

GoldMark typographer extension disabled:

```html
<p><img src="some-image.png" alt="A's and B's"></p>
```

GoldMark typographer extension enabled:

```html
<p><img src="some-image.png" alt="A&rsquo;s and B&rsquo;s"></p>
```

## Embedded image render hook enabled

GoldMark typographer extension disabled:

```html
<p><img src="/some-image.png" alt="A&#39;s and B&#39;s"></p>
```

GoldMark typographer extension enabled:

```html
<p><img src="/some-image.png" alt="As and Bs"></p>
```

----

![A's and B's](a.jpg)

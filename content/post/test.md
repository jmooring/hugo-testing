+++
title = "Test"
date = 2020-07-02T15:54:01-04:00
draft = false
+++

Note: this site has no styling applied; nothing inline, nothing in `<head>`, and no linked CSS files.

> `linenos`: configure line numbers. Valid values are `true`, `false`, `table`, or `inline`. `false` will turn off line numbers if it’s configured to be on in site config. New in v0.60.0 `table` will give copy-and-paste friendly code blocks.

PASS: `linenos=true`

```txt {linenos=true}
This is a short line of text.
This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text.
This is a short line of text.
```

PASS: `linenos=table`

```txt {linenos=table}
This is a short line of text.
This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text.
This is a short line of text.
```

FAIL: `linenos=inline` (horizontal scrollbar appears at bottom of window)

```txt {linenos=inline}
This is a short line of text.
This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text.
This is a short line of text.
```

FAIL: `linenos=false` (horizontal scrollbar appears at bottom of window)

```txt {linenos=false}
This is a short line of text.
This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text. This is a long line of text.
This is a short line of text.
```

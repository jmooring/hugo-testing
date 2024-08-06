+++
title = 'Hugo GitHub Issue #12717'
linkTitle = 'Home'
date = 2024-08-06T07:29:29-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/12717'
description = "Add render hooks passthroughs and blockquotes"
+++

## Passthrough test

\[c^2=a^2+b^2\]

\(c^2=a^2+b^2\)

## Blockquote test

```text
> [!NOTE]  
> Das ist meine Notiz.
{.foo #bar}
```

> [!NOTE]  
> Das ist meine Notiz.
{.foo #bar}

```text
> This is a regular block quote.
```

> This is a regular block quote.

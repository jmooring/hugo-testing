---
title: Home
date: 024-03-03T13:52:53-08:00
details: https://discourse.gohugo.io/t/48638
description: Limit use of punctuation within taxonomy terms
tags:
  - 'a,b'
  - 'a:b'
  - 'a<b'
  - 'a[b'
  - 'a]b'
  - 'a{b'
  - 'a|b'
  - 'a}b'
  - a b
  - a!b
  - a"b
  - a#b
  - a$b
  - a&b
  - a'b
  - a(b
  - a)b
  - a*b
  - a+b
  - a-b
  - a.b
  - a/b
  - a;b
  - a=b
  - a>b
  - a?b
  - a@b
  - a\b
  - a^b
  - a_b
  - a`b
  - ab
  - a~b
---

## Analysis

In the table above:

- 23 of the 32 terms have the same URL
- 9 of the 32 identifiers contain characters that are disallowed in file names by Windows (`* " / \ < > : | ?`)
- 1 of the identifiers contains a character that is disallowed in file names by Linux(`/`)
- 2 of the relative permalinks contain special URL characters (`+ #`)

All of the above are Very Bad Things.

We need to disallow most of the punctuation to:

1. Ensure unique URLs
2. Avoid file name characters disallowed by operating systems
3. Avoid characters with special meaning when used in a URL

## Documentation update (TODO)

Taxonomy terms may contain letters, numbers, spaces, and any of the following characters:

- `_` (underscore)
- `-` (hyphen)
- `.` (period)
- `@` (at sign)
- `~` (tilde)

Note that spaces and hyphens are equivalent, so these terms are equivalent:

- `a b`
- `a-b`

Although these two terms have the same URL, we cannot disallow hyphens or spaces due to prevalence in the wild.

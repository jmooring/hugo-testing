+++
title = 'Hugo GitHub Issue #13591'
linkTitle = 'Home'
date = 2025-04-11T08:24:41-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/13591'
description = 'Version 0.146.1 adds a linebreak after each "</a>" in markdown content'
+++

```text
Lorem ipsum dolor sit <a href="#">amet</a>. A new sentence.
````

Lorem ipsum dolor sit <a href="#">amet</a>. A new sentence.

```text
Lorem ipsum dolor sit [amet](#). A new sentence.
```

Lorem ipsum dolor sit [amet](#). A new sentence.

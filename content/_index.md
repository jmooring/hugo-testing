+++
title = 'Hugo Forum Topic #54833'
linkTitle = 'Home'
date = 2025-05-22T10:47:13-07:00
draft = false
details = 'https://discourse.gohugo.io/t/54833'
description = "How to escape a double backslash?"
+++

This works:

```text
{{</* math `line 1\\line2` */>}}
```

{{< math `line 1\\line2` >}}

This fails:

```text
{{</* math `line 1\\line2` display */>}}
```

{{< math `line1\\line2` display >}}

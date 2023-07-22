+++
title = 'Post 1'
date = 2023-07-21T21:32:36-07:00
draft = false
+++

You should see the number "24" below. The markdown for this page calls

```
{{</* template example.tmpl */>}}
```

The shortcode gets "example.tmpl" as a page resource, then runs it through `resources.ExecuteAsTemplate`, rendering the resource `.Content`.

---


{{< template example.tmpl >}}

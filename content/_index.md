+++
title = 'Hugo Forum Topic #43014'
linkTitle = 'Home'
date = 2023-02-18T19:36:40-08:00
draft = false
details = 'https://discourse.gohugo.io/t/43014'
description = "How to organize static and asset files from the same npm package?"
+++

Specify color using CSS [color keywords](https://www.w3.org/wiki/CSS3/Color/Extended_color_keywords) (case-insensitive).

```text
{{</* bi bi-fingerprint xxl Red */>}}
{{</* bi bi-fingerprint xl Orange */>}}
{{</* bi bi-fingerprint lg Gold */>}}
{{</* bi bi-fingerprint md Green */>}}
{{</* bi bi-fingerprint sm Blue */>}}
{{</* bi bi-fingerprint xs Indigo */>}}
{{</* bi bi-fingerprint xxs Violet */>}}
{{</* bi bi-fingerprint */>}}
```

{{< bi bi-fingerprint xxl Red >}}
{{< bi bi-fingerprint xl Orange >}}
{{< bi bi-fingerprint lg Gold >}}
{{< bi bi-fingerprint md Green >}}
{{< bi bi-fingerprint sm Blue >}}
{{< bi bi-fingerprint xs Indigo >}}
{{< bi bi-fingerprint xxs Violet >}}
{{< bi bi-fingerprint >}}

The `bi` shortcode converts all class names to lowercase and adds them to the `<i>` element's class attribute.

```text
{{</* bi bi-spotify md dodgerblue a b c */>}}
```

Is rendered to:

```html
<i class="bi bi-spotify md dodgerblue a b c"></i>
```

{{< bi bi-spotify md dodgerblue a b c >}}

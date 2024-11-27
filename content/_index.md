+++
title = 'Hugo GitHub Issue #13090'
linkTitle = 'Home'
date = 2024-11-27T10:09:56-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/13090'
description = "Add Details Shortcode for collapsable sections within markdown content"
+++

This demonstrates a XSS vulnerability:

{{< details id="\"><script>alert('pwned!')</script>" >}}
A basic collapsible section.
{{< /details >}}

---

{{< details >}}
A basic collapsible section.
{{< /details >}}

{{< details summary="Custom Summary Text" >}}
Showing custom `summary` text.
{{< /details >}}

{{< details summary="Open Details" open=true >}}
Contents displayed initially by using `open`.
{{< /details >}}

{{< details summary="Styled Content" class="my-custom-class" >}}
Content can be styled with CSS by specifying a `class`.

Target details element:

```css
details.my-custom-class { }
```

Target summary element:

```css
details.my-custom-class > summary > * { }
```

Target inner content:

```css
details.my-custom-class > :not(summary) { }
```
{{< /details >}}

{{< details summary="Grouped Details" name="my-details" >}}
Specifying a `name` allows elements to be connected, with only one able to be open at a time.
    {{< /details >}}

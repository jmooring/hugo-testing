+++
title = 'Hugo Forum Topic #14929'
date = 2023-02-02T15:36:18-08:00
draft = false
details = 'https://discourse.gohugo.io/t/14929'
+++

The shortcodes used in these example are [described here](/shortcodes).

## Call a shortcode using the `{{</* */>}}` notation

When you call a shortcode using the `{{</* */>}}` notation, we replace the shortcode with a placeholder (a short string without whitepace) _before_ sending the content to the markdown render ([Goldmark]).

When we get the rendered content back from Goldmark, we replace the placeholders with the rendered shortcodes.

### No blank lines between shortcodes {.nblbs1}

This produces the expected results, including the fact that {{<mark "the resulting HMTL is invalid ">}}. Paragraph elements may only contain [phrasing content].

See the Commonmark [reference implementation of this example](https://spec.commonmark.org/dingus/?text=HAHA%48UGOSHORTCODE-s0-HBHB%0AHAHA%48UGOSHORTCODE-s1-HBHB%0AHAHA%48UGOSHORTCODE-s1-HBHB).

#### Markdown {.md1}

```text
{{</* shortcode-1 */>}}
{{</* shortcode-2 */>}}
{{</* shortcode-3 */>}}
```

#### Rendered {.r1}

```html
<p>
  <p>shortcode-1</p>
  <img src="/shortcode-2.jpg">
  shortcode-3
</p>
```

{{< shortcode-1 >}}
{{< shortcode-2 >}}
{{< shortcode-3 >}}

### Blank lines between shortcodes - IMPORTANT! {.blbs1}

See the Commonmark [reference implementation of this example](https://spec.commonmark.org/dingus/?text=HAHA%48UGOSHORTCODE-s0-HBHB%0A%0AHAHA%48UGOSHORTCODE-s1-HBHB%0A%0AHAHA%48UGOSHORTCODE-s1-HBHB).

#### Markdown {.md2}

```text
{{</* shortcode-1 */>}}

{{</* shortcode-2 */>}}

{{</* shortcode-3 */>}}
```

#### You might expect to get

```html
<p><p>shortcode-1</p></p>
<p><img src="/shortcode-2.jpg"></p>
<p>shortcode-3</p>
```

#### But instead you get

```html
<p>shortcode-1</p>
<img src="/shortcode-2.jpg">
shortcode-3
```

{{< shortcode-1 >}}

{{< shortcode-2 >}}

{{< shortcode-3 >}}

#### Why?

When we get this back from Goldmark...

```text
<p>HAHAHUGOSHORTCODe-s0-HBHB</p>
```

...we strip the wrapping `p` tags:

- <https://github.com/gohugoio/hugo/issues/1148>
- <https://github.com/gohugoio/hugo/blob/master/hugolib/shortcode.go#L735-L741>

This produces valid and desired HTML for non-phrasing content such as `aside`, `blockquote`, `details`, `div`, `footer`, `h1-h6`, `header`, `hr`, `main`, `nav`, `ol`, `p`, `pre`, `section`, `ul` and others.

But when we strip the `p` tags, we don't know if they are wrapping non-phrasing content or something else; the placeholder has not been replaced yet.

## Call a shortcode using the `{{%/* */%}}` notation

When you call a shortcode using the `{{%/* */%}}` notation, we replace the shortcode with the contents of the shortcode, then send content Goldmark.

If your shortcodes include HTML, and you use the `{{%/* */%}}` notation, you must add this to your site configuration:

```text
[markup.goldmark.renderer]
unsafe = true
```

It's not unsafe if _you_ control the content.

### No blank lines between shortcodes {.nblbs2}

This produces the expected results.

See the Commonmark [reference implementation of this example](https://spec.commonmark.org/dingus/?text=%3Cp%3Eshortcode-1%3C%2Fp%3E%0A%3Cimg%20src%3D%22%2Fshortcode-2.jpg%22%3E%0Ashortcode-3).

#### Markdown {.md3}

```text
{{%/* shortcode-1 */%}}
{{%/* shortcode-2 */%}}
{{%/* shortcode-3 */%}}
```

#### Rendered {.r3}

```html
<p>shortcode-1</p>
<img src="/shortcode-2.jpg">
shortcode-3
```

{{% shortcode-1 %}}
{{% shortcode-2 %}}
{{% shortcode-3 %}}

### Blank lines between shortcodes {.blbs2}

This produces the expected results.

See the Commonmark [reference implementation of this example](https://spec.commonmark.org/dingus/?text=%3Cp%3Eshortcode-1%3C%2Fp%3E%0A%0A%3Cimg%20src%3D%22%2Fshortcode-2.jpg%22%3E%0A%0Ashortcode-3).

#### Markdown {.md4}

```text
{{%/* shortcode-1 */%}}

{{%/* shortcode-2 */%}}

{{%/* shortcode-3 */%}}
```

#### Rendered {.r4}

```html
<p>shortcode-1</p>
<img src="/shortcode-2.jpg">
<p>shortcode-3</p>
```

{{% shortcode-1 %}}

{{% shortcode-2 %}}

{{% shortcode-3 %}}

[Goldmark]: https://github.com/yuin/goldmark
[phrasing content]: https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#phrasing_content

+++
title = 'Hugo Forum Topic #43832'
linkTitle = 'Home'
date = 2023-04-10T09:38:14-07:00
draft = false
details = 'https://discourse.gohugo.io/t/43832'
description = "Shortcode and footnotes"
+++

## Test 1

layouts/shortcodes/a.html:

```go-html-template
{{ .Inner }}
```

markdown:

```text
{{%/* a */%}}
This is **bold** text.[^1]
{{%/* /a */%}}

[^1]: This is footnote 1.
```

rendered:

{{% a %}}
This is **bold** text.[^1]
{{% /a %}}

[^1]: This is footnote 1.

## Test 2

layouts/shortcodes/b.html:

```go-html-template
<div>
  {{ .Inner }}
</div>
```

markdown:

```text
{{%/* b */%}}
This is **bold** text.[^2]
{{%/* /b */%}}

[^2]: This is footnote 2.
```

rendered:

{{% b %}}
This is **bold** text.[^2]
{{% /b %}}

[^2]: This is footnote 2.

## Test 3

This will fail, as expected. See <https://spec.commonmark.org/0.30/#html-blocks>.

layouts/shortcodes/c.html:

```go-html-template
<div>{{ .Inner }}
</div>
```

markdown:

```text
{{%/* c */%}}
This is **bold** text.[^3]
{{%/* /c */%}}

[^3]: This is footnote 3.
```

rendered:

{{% c %}}
This is **bold** text.[^3]
{{% /c %}}

[^3]: This is footnote 3.

## Test 4 (fixed quotebox shortcode)

markdown:

```text
{{%/* quotebox boxstyle="qbs_generic" qmarkstyle="qbm_doublequotationmark" boxcolour="qbc_blue" attribalign="txt_right" citeby="" citelink="" citerel="noopener external" pubtitle="" publink="" pubrel="noopener external" */%}}
content [^some-footnote]
{{%/* /quotebox */%}}

[^some-footnote]: this is a footnote
```

rendered:

{{% quotebox boxstyle="qbs_generic" qmarkstyle="qbm_doublequotationmark" boxcolour="qbc_blue" attribalign="txt_right" citeby="" citelink="" citerel="noopener external" pubtitle="" publink="" pubrel="noopener external" %}}
content [^some-footnote]
{{% /quotebox %}}

[^some-footnote]: this is a footnote

+++
title = 'Hugo GitHub Issue #11123'
linkTitle = 'Home'
date = 2023-06-16T17:48:33-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/11123'
description = "Empty `<p>` tags gets created when `<img>` is wrapped by `<figure>` in `render-image.html`"
+++

### Explanation

Hugo converts markdown to HTML using the [Goldmark](https://github.com/yuin/goldmark/) markdown renderer, and Goldmark conforms to the [CommonMark specification](https://spec.commonmark.org/0.30/). Per the specification, this markdown:

```markdown
paragraph

![alt](src)

paragraph
```

is rendered to:

```html
<p>paragraph</p>
<p><img src="src" alt="alt"></p>
<p>paragraph</p>
```

Test this yourself using the [CommonMark reference implementation](https://spec.commonmark.org/dingus/?text=paragraph%0A%0A!%5Balt%5D(src)%0A%0Aparagraph).

If your image render hook looks like this:

```go-html-template
<figure>
  <img src="{{ .Destination | safeURL }}" alt="{{ .PlainText }}">
</figure>
```

then the example above is rendered to:

```html
<p>paragraph</p>
<p>
  <figure>
    <img src="src" alt="alt">
  </figure>
</p>
<p>paragraph</p>
```

This HTML is invalid. A `p` element cannot contain other block-level elements, and `figure` is a block-level element.

### Render stand-alone images as figure elements

If you want your image render hook to wrap stand-alone `img` elements within a `figure` element, you must:

1. Change your site configuration so that stand-alone images are not wrapped within `p` tags:

   ```toml
   [markup.goldmark.parser]
   wrapStandAloneImageWithinParagraph = false # default is true
   ```

2. Change your image render hook to test for a block-level element:

   ```go-html-template
   {{ if .IsBlock }}
     <figure>
       <img src="{{ .Destination | safeURL }}" alt="{{ .PlainText }}">
     </figure>
   {{ else }}
     <img src="{{ .Destination | safeURL }}" alt="{{ .PlainText }}">
   {{ end }}
   ```

If you want to pass attributes such as a caption or class to your render hook, add this to your site configuration:

```toml
[markup.goldmark.parser.attribute]
title = true # default is true; applies to h1-h6 elements
block = true # default is false; applies to other block-level elements 
```

Then you can do this:

```markdown
![alt](src)
{caption="foo" class="bar"}
```

Access the markdown attributes within the render hook using the `.Attributes` method:

```go-html-template
{{ .Attributes.caption }} --> foo
{{ .Attributes.class }} --> bar
```

### Render stand-alone images wrapped within links as figure elements

This is not possible. You must use a shortcode, either the [built-in figure shortcode](https://gohugo.io/content-management/shortcodes/#figure), or roll your own ([see source](https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/shortcodes/figure.html)).

### Example of a stand-alone image rendered as a figure element

```markdown
![A kitten](https://www.veriphor.com/shared/images/c.jpg)
{caption="This is the caption"}
```

![A kitten](https://www.veriphor.com/shared/images/c.jpg)
{caption="This is the caption"}

### Example of figure shortcode

```markdown
{{</* figure
  src=https://www.veriphor.com/shared/images/c.jpg
  link=https://gohugo.io
  alt="A kitten"
  caption="This is the caption"
*/>}}
```

{{< figure
  src=https://www.veriphor.com/shared/images/c.jpg
  link=https://gohugo.io
  alt="A kitten"
  caption="This is the caption"
>}}

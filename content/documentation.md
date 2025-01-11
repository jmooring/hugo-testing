---
title: Documentation
---

Signature:

```text
diagrams.D2 MARKUP [OPTIONS]
```

Useful in a [code block render hook][], the `diagrams.D2` function returns an SVGDiagram object created from the given [D2][] markup and options.

```go-html-template
{{ $markup := `x -> y` }}
{{ $options := dict "scale" 1.5 "padding" 10 }}
{{ $d := diagrams.D2 $markup $options }}
{{ $d.Wrapped }}
```

## Methods

Diagrams rendered by D2 consist of an `svg` element that is subsequently wrapped within another `svg` element. Conceptually, the inner `svg` element is the diagram, and the outer `svg` element is a container.

The SVGDiagram object has the following methods:

Wrapped
: (`template.HTML`) Returns the inner `svg` element wrapped within an outer `svg` element, effectively reconstructing the original SVG diagram created by D2.

Inner
: (`template.HTML`) Returns the inner `svg` element.

Width
: (`int`) Returns the `width` attribute of the outer `svg` element, which may differ from the inner `svg` element's width if scaled during rendering.

Height
: (`int`) Returns the `height` attribute of the outer `svg` element, which may differ from the inner `svg` element's height if scaled during rendering.

ViewBox
: (`string`) Returns the `viewBox` attribute of the outer `svg` element. The `viewBox` coordinates are not affected by scaling.

PreserveAspectRatio
: (`string`) Returns the `preserveAspectRatio` attribute of the outer `svg` element.

## Options

The `diagrams.D2` function takes an options map with zero or more of the following options:

center
: (`bool`) Whether to center the diagram within the viewport, applicable only when the viewport's aspect ratio is different than that of the SVG `viewBox` attribute. When `true`, sets the `preserveAspectRatio` attribute to `xMidYMid meet`. When `false`, sets the `preserveAspectRatio` attribute to `xMinYMin meet`. Default is `false`.

darkTheme
: (`string`) The D2 theme to use if the system is in dark mode. This value is case-insensitive. See [this list][] of available themes. Default is `Dark Flagship Terrastruct`.

layoutEngine
: (`string`) The D2 layout engine to use when automatically arranging diagram elements, either `dagre` or `elk`. This value is case-insensitive. Default is `dagre`. See [documentation][] for details.

lightTheme
: (`string`) The D2 theme to use if the system is in light mode or has no preference. This value is case-insensitive. See [this list][] of available themes. Default is `Neutral Default`.

minify
: (`bool`) Whether to minify the SVG markup. Default is `true`.

padding
: (`int`) The number of pixels with which to pad each side of the diagram. This value must be within the bounds of 0 and 1000, inclusive. Default is `0`.

salt
: (`string`) A salt value used to generate a unique ID, preventing conflicts when embedding multiple identical diagrams in the same HTML document.

scale
: (`float`) How much to reduce or enlarge the diagram. Values less than 1 reduce the diagram, while values greater than 1 enlarge the diagram. This value must be greater than 0 and less than or equal to 100. Default is `1`.

sketch
: (`bool`) Whether to render the diagram as if sketched by hand. Default is `false`.

## Render hook

Hugo natively supports D2 diagrams with an [embedded code block render hook][], allowing you to use fenced code blocks for D2 markup within your Markdown.

The render hook accepts the options for the `diagrams.D2` function as described above, and those described below:

class
: (`string`) One or more CSS classes to append to the hardcoded `class` attribute of the outer `div` element. The hardcoded `class` attribute of the outer `div` element is `d2-svg-container`.

file
: (`string`) The path to a file containing D2 markup, typically with a `.d2` extension. If this value is non-empty, Hugo ignores any content between the opening and closing code fences. The render hook resolves the path by looking for a matching [page resource](g), falling back to a matching [global resource](g). It throws an error and fails the build if the file does not exist.

id
: (`string`) The `id` attribute of the outer `div` element.

title
: (`string`) The `title` attribute of the outer `div` element.

## Examples

To create a D2 diagram using the default options:

````text
```d2svg
direction: right
x -> y
```
````

```d2svg
direction: right
x -> y
```

To enlarge and render as a sketch, specify the options as comma-separated or space-separated key-value pairs wrapped within braces:

````text
```d2svg {scale=1.5, sketch=true}
direction: right
x -> y
```
````

```d2svg {scale=1.5, sketch=true}
direction: right
x -> y
```

To change the theme and add one or more CSS classes to the outer `div` element:

````text
```d2svg {scale=1.5, sketch=true, lightTheme="Everglade Green" class="foo bar"}
direction: right
x -> y: hello {
  style.animated: true
}
```
````

```d2svg {scale=1.5, sketch=true, lightTheme="Everglade Green" class="foo bar"}
direction: right
x -> y: hello {
  style.animated: true
}
```

## Caching

Hugo employs caching to optimize diagram rendering, storing results in memory and on disk. The default disk cache location is `:cacheDir/:project`, defined in your site configuration:

{{< code-toggle config=caches.misc />}}

Alternatively, you can configure Hugo to cache diagrams within the project's `resources` directory as shown below:

{{< code-toggle file=hugo >}}
[caches.misc]
dir = ':resourceDir'
maxAge = -1
{{< /code-toggle >}}

Learn more about [file cache configuration].

## Configuration

To achieve a consistent look and feel for all diagrams on your site, define default settings within your site's configuration file.

{{< code-toggle config="markup.diagrams.d2" />}}

## Themes

D2 themes customize visual elements like colors, fill patterns, and border radii. Two [theme catalogs][] exist: one for light and one for dark modes. When your system is in dark mode, the configured dark theme is applied.

By default, Hugo uses:

- Light theme: Neutral Default
- Dark theme: Dark Flagship Terrastruct

You can override these defaults by specifying a light and dark theme in your site configuration, within the options map passed to the `d2.Diagram` function, or in fenced D2 code blocks.

### Light themes

{{< list-d2-themes catalog=light >}}

### Dark themes

{{< list-d2-themes catalog=dark >}}

## Miscellaneous

### Responsive diagrams

Create a CSS ruleset to make your D2 diagrams responsive:

```css
.d2-svg-container > svg {
  max-width: 100%;
  height: auto;
}
```

### Visual Studio Code

Install the [D2 extension][] to help you create D2 diagrams when using Visual Studio Code.

[code block render hook]: /render-hooks/code-blocks/
[D2]: https://d2lang.com/
[D2 extension]: https://marketplace.visualstudio.com/items?itemName=terrastruct.d2
[documentation]: https://d2lang.com/tour/layouts
[embedded code block render hook]: <{{% eturl render-codeblock-d2 %}}>
[file cache configuration]: /configuration/caches/
[theme catalogs]: https://d2lang.com/tour/themes/
[this list]: https://d2lang.com/tour/themes/

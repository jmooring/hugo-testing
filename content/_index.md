+++
title = 'Hugo GitHub Issue #10558'
date = 2022-12-19T14:49:08-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/10558'
description = "tocss/dartsass: Add vars option"
+++

# Initialize Sass variables from Hugo templates

Hugo [v0.109.0] introduces an intuitive and convenient way to initialize Sass variables from your templates.

On this page:

1. [The old way](#the-old-way)
1. [The new way](#the-new-way)
1. [Usage notes](#usage-notes)
1. [Try it](#try-it)

## The old way

With v0.108.0 and earlier, you assign template values to Sass variables using the `resources.ExecuteAsTemplate` method. When using this approach you must place Hugo template code at the top of your root Sass file, typically `assets/scss/main.scss`. Depending on the complexity of your project, this approach can be:

- Aesthetically displeasing
- Unwieldy or difficult to maintain
- Contrary to the [separation of concerns] principle

A simplistic example using the (deprecated) LibSass transpiler:

config.toml

```toml
[params.style]
container_max_width = '768px'
font_family_base = 'sans-serif'
font_size_base = '18px'
```

structure

```text
assets/scss/
├── _layout.scss
├── _typography.scss 
└── main.scss
```

main.scss

```scss
// Variables initialized with resources.ExecuteAsTemplate
$container-max-width: {{ site.Params.style.container_max_width }};
$font-family-base: {{ site.Params.style.font_family_base }};
$font-size-base: {{ site.Params.style.font_size_base }};

// Imports
@import "layout";
@import "typography";
```

baseof.html

```go-html-template
{{ $options := dict
  "targetPath" "css/style.css"
  "transpiler" "libsass"
}}

{{ with resources.Get "scss/main.scss" | resources.ExecuteAsTemplate "" . | toCSS $options}}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```

## The new way

With v0.109.0 and later, Hugo injects a Sass module (`hugo:vars`) to initialize your Sass variables. Your Sass files will contain Sass rules, and nothing else.

Using the previous example with the [Dart Sass transpiler]:

config.toml _(same as previous example)_

```toml
[params.style]
container_max_width = '768px'
font_family_base = 'sans-serif'
font_size_base = '18px'
```

structure _(same as previous example)_

```text
assets/scss/
├── _layout.scss
├── _typography.scss 
└── main.scss
```

main.scss

```scss
@use "layout";
@use "typography";
```

_layout.scss

```scss
@use "hugo:vars" as h;

.container {
  max-width: h.$container-max-width;
}
```

_typography.scss

```scss
@use "hugo:vars" as h;

body {
  font-family: h.$font-family-base;
  font-size: h.$font-size-base;
}
```

baseof.html

```go-html-template
{{ $options := dict
  "targetPath" "css/style.css"
  "transpiler" "dartsass"
  "vars" site.Params.style
}}

{{ with resources.Get "scss/main.scss" | toCSS $options }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```

In the code above, look at the last key/value pair in the `$options` map:

```go-html-template
"vars" site.Params.style
```

That's where the magic is.

## Usage notes

### Key names

You can assign any non-nested map to the `vars` key in the `$options` map. Use _snake_case_ to define the keys. For example:

```go-html-template
{{ $v := dict 
  "font_size" "18px"
  "font_color" "#222",
}}
```

With this Sass rule:

```scss
@use "hugo:vars" as h;
```

You can access the Sass variables with:

```text
h.$font-size
h.$font-color
```

Note that [Sass variables], like all Sass identifiers, treat hyphens and underscores as identical. That means you can also access the Sass variables with underscores:

```text
h.$font_size
h.$font_color
```

Do not use _kebab-case_ to define the keys. [Go identifiers] may not contain hyphens. If the key name includes a hyphen, you cannot access the value with chained identifiers. For example, `site.Params.style.font-size` will throw a parsing error.

Do not use _camelCase_ or _PascalCase_ to define the keys. Internally, Hugo transforms all keys to lowercase. If you define a key named `bodyBackgroundColor`, the corresponding Sass variable will be `$bodybackgroundcolor`. It works, but is difficult to read.

### LibSass transpiler

You can also use the built-in LibSass transpiler. Although LibSass does not support modules, the syntax is similar.

Using the previous example with the LibSass transpiler:

config.toml _(same as previous example)_

```toml
[params.style]
container_max_width = '768px'
font_family_base = 'sans-serif'
font_size_base = '18px'
```

structure _(same as previous example)_

```text
assets/scss/
├── _layout.scss
├── _typography.scss 
└── main.scss
```

main.scss

```scss
@import "hugo:vars";
@import "layout";
@import "typography";
```

_layout.scss

```scss
.container {
  max-width: $container-max-width;
}
```

_typography.scss

```scss
body {
  font-family: $font-family-base;
  font-size: $font-size-base;
}
```

baseof.html

```go-html-template
{{ $options := dict
  "targetPath" "css/style.css"
  "transpiler" "libsass"
  "vars" site.Params.style
}}

{{ with resources.Get "scss/main.scss" | toCSS $options }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```

## Try it

The previous examples are simplistic. This example is more realistic, including:

- Default values for non-existing keys
- [Image processing] to create a background image
- [PostCSS transformation] (autoprefixer)

You must install the [Dart Sass transpiler] before building this site.

After you have installed the Dart Sass transpiler:

```bash
git clone --single-branch -b hugo-github-issue-10558 https://github.com/jmooring/hugo-testing hugo-github-issue-10558
cd hugo-github-issue-10558
npm ci
hugo server
```

Files of interest:

- layouts/_default/baseof.html
- layouts/partials/css.html _(called by baseof.html)_
- layouts/partials/get-scss-vars.html _(called by css.html)_
- assets/scss/*

[Dart Sass transpiler]: https://discourse.gohugo.io/t/using-the-dart-sass-transpiler/41878
[Go identifiers]: https://go.dev/ref/spec#Identifiers
[Image processing]: https://gohugo.io/content-management/image-processing/
[PostCSS transformation]: https://gohugo.io/hugo-pipes/postcss/
[Sass variables]: https://sass-lang.com/documentation/variables
[separation of concerns]: https://en.wikipedia.org/wiki/Separation_of_concerns
[v0.109.0]: https://github.com/gohugoio/hugo/releases/tag/v0.109.0

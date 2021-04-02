### Method 1: Create Your Own TOC

markdown

```text
{{< span id="foo" title="The First Span" >}}
This text is **bold**.
{{< /span >}}

{{< span id="bar" title="The Second Span" >}}
This text is _emphasized_.
{{< /span >}}
```

layouts/shortcodes/span.html

```text
{{ $msg := "The %s shortcode requires two named parameters, id and title. See %s" }}
{{ with $id := .Get "id"}}
  {{ with $title := ($.Get "title") }}
    {{- $inner := trim $.Inner "\n" -}}
    {{- $id := $id | anchorize -}}
    <span id="{{ $id }}" data-toc="" data-title="{{ $title }}">{{ $inner | $.Page.RenderString }}</span>
  {{ else }}
    {{ errorf $msg $.Name $.Position }}
  {{ end }}
{{ else }}
  {{ errorf $msg $.Name $.Position }}
{{ end }}
```

layouts/_default/single.html

```text
{{ define "main" }}
  {{ .Title }}

  {{ $toc := slice }}
  {{ $spans := findRE `<span.*data-toc.*?>` .Content }}
  {{ range $spans }}
    {{ $id := replaceRE `.*id="(.*?)".*` "$1" . }}
    {{ $title := replaceRE `.*data-title="(.*?)".*` "$1" . }}
    {{ $toc = $toc | append (dict "id" $id "title" $title) }}
  {{ end }}

  <nav id="TableOfContents">
    <ul>
    {{ range $toc }}
      <li><a href="#{{ .id }}">{{ .title }}</a></li>
    {{ end }}
    </ul>
  </nav>

  {{ .Content }}

{{ end }}
```

### Method 2: Cheat

markdown

```text
## The First Span {style="line-height: 0px; margin: 0; visibility: hidden;"}

{{< span-2 >}}
This text is **bold**.
{{< /span-2 >}}

## The Second Span {style="line-height: 0px; margin: 0; visibility: hidden;"}

{{< span-2 >}}
This text is _emphasized_.
{{< /span-2 >}}
```

layouts/shortcodes/span-2.html

```text
<span>{{ trim .Inner "\n" | .Page.RenderString }}</span>
```

### Method 3: Cheat Carefully

config.toml

```toml
[markup.goldmark.renderer]
unsafe = true
```

markdown

```text
{{% span-3 id="foo" title="The First Span" %}}
This text is **bold**.
{{% /span-3 %}}

{{% span-3 id="bar" title="The Second Span" %}}
This text is _emphasized_.
{{% /span-3 %}}
```

layouts/shortcodes/span-3.html

```text
<style>h2.hide-me { line-height: 0px; margin: 0; visibility: hidden; }</style>
{{ $msg := "The %s shortcode requires two named parameters, id and title. See %s" }}
{{ with $id := .Get "id"}}
  {{ with $title := ($.Get "title") }}
    {{- $inner := trim $.Inner "\n" -}}
    {{- $id := $id | anchorize -}}
    {{- printf "\n\n## %s {#%s .hide-me}\n\n" $title $id -}}
    <span>{{ $inner }}</span>
  {{ else }}
    {{ errorf $msg $.Name $.Position }}
  {{ end }}
{{ else }}
  {{ errorf $msg $.Name $.Position }}
{{ end }}
```

### Method 4: Cheat without Getting Caught

config.toml

```toml
[markup.goldmark.renderer]
unsafe = true
```

markdown

```text
{{% span-4 id="foo" title="The First Span" %}}
This text is **bold**.
{{% /span-4 %}}

{{% span-4 id="bar" title="The Second Span" %}}
This text is _emphasized_.
{{% /span-4 %}}
```

layouts/shortcodes/span-4.html

```text
{{ $msg := "The %s shortcode requires two named parameters, id and title. See %s" }}
{{ with $id := .Get "id"}}
  {{ with $title := ($.Get "title") }}
    {{- $inner := trim $.Inner "\n" -}}
    {{- $id := $id | anchorize -}}
    {{- printf "\n\n## %s {#%s .delete-me}\n\n" $title $id -}}
    <span id="{{ $id }}">{{ $inner }}</span>
  {{ else }}
    {{ errorf $msg $.Name $.Position }}
  {{ end }}
{{ else }}
  {{ errorf $msg $.Name $.Position }}
{{ end }}
```

layouts/_default/single.html

```text
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .TableOfContents }}
  {{ strings.ReplaceRE `<h2(.*)class="delete-me"(.*)h2>` "" .Content | safeHTML }}
{{ end }}
```

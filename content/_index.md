+++
title = 'Hugo GitHub Issue #4717'
date = 2022-01-17T11:43:23-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/4717'
description = "Indented `highlight` shortcode brings in the indentation as part of the code block"
+++

## Code Fences

### No Indentation

```go-html-template
{{ range seq 10 }}
  {{ if gt . 5 }}
    {{ printf "%d is greater than 5" . }}<br>
  {{ end }}
{{ end }}
```

### Indent with Spaces

- Item 1

  ```go-html-template
  {{ range seq 10 }}
    {{ if gt . 5 }}
      {{ printf "%d is greater than 5" . }}<br>
    {{ end }}
  {{ end }}
  ```

- Item 2
  - Item 2.1

    ```go-html-template
    {{ range seq 10 }}
      {{ if gt . 5 }}
        {{ printf "%d is greater than 5" . }}<br>
      {{ end }}
    {{ end }}
    ```

  - Item 2.2
- Item 3

### Indent with Tabs

- Item 1

	```go-html-template
	{{ range seq 10 }}
		{{ if gt . 5 }}
 			{{ printf "%d is greater than 5" . }}<br>
  		{{ end }}
  	{{ end }}
  	```

- Item 2
	- Item 2.1

		```go-html-template
		{{ range seq 10 }}
			{{ if gt . 5 }}
				{{ printf "%d is greater than 5" . }}<br>
			{{ end }}
		{{ end }}
		```

	- Item 2.2
- Item 3

## Highlight Shortcode

### No Indentation

{{< highlight go-html-template >}}
{{ range seq 10 }}
  {{ if gt . 5 }}
    {{ printf "%d is greater than 5" . }}<br>
  {{ end }}
{{ end }}
{{< /highlight >}}

### Indent with Spaces

- Item 1

  {{< highlight go-html-template >}}
  {{ range seq 10 }}
    {{ if gt . 5 }}
      {{ printf "%d is greater than 5" . }}<br>
    {{ end }}
  {{ end }}
  {{< /highlight >}}

- Item 2
  - Item 2.1

    {{< highlight go-html-template >}}
    {{ range seq 10 }}
      {{ if gt . 5 }}
        {{ printf "%d is greater than 5" . }}<br>
      {{ end }}
    {{ end }}
    {{< /highlight >}}

  - Item 2.2
- Item 3

### Indent with Tabs

- Item 1

	{{< highlight go-html-template >}}
	{{ range seq 10 }}
		{{ if gt . 5 }}
			{{ printf "%d is greater than 5" . }}<br>
		{{ end }}
	{{ end }}
	{{< /highlight >}}

- Item 2
	- Item 2.1

		{{< highlight go-html-template >}}
		{{ range seq 10 }}
			{{ if gt . 5 }}
				{{ printf "%d is greater than 5" . }}<br>
			{{ end }}
		{{ end }}
		{{< /highlight >}}

	- Item 2.2
- Item 3

{{- $base := "a-subresource.scss" -}}
{{- with $scss := resources.Get (path.Join (path.Dir .) $base) -}}
{{- $css := $scss | toCSS | minify -}}
const a1 = '{{ $css.Content }}';
{{- end -}}

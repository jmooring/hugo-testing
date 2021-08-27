{{- $base := "b-subresource.scss" -}}
{{- with $scss := resources.Get (path.Join (path.Dir .) $base) -}}
{{- $css := $scss | toCSS | minify -}}
const b1 = '{{ $css.Content }}';
{{- end -}}
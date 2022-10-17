{{- $c := printf "~~~\n%s~~~" .RawContent | .Page.RenderString | htmlUnescape }}
{{- $lines := split $c "\n" }}
{{- range $k, $_ := $lines }}
{{- if and $k (ne $k (sub (len $lines) 1)) }}
{{ . }}
{{- end -}}
{{- end -}}

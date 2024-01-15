---
{{ $issueDate := time.AsTime .File.ContentBaseName -}}
{{- $issueDateISO := $issueDate | time.Format "2006-01-02" -}}
title: "{{ $issueDate | time.Format ":date_long" }}"
date: "{{ $issueDateISO }}"
thumbnail: "{{ $issueDateISO }}.png"
issue: "{{ $issueDateISO }}.pdf"
---

<a class="download" href="{{ $issueDateISO }}.pdf">
{{< figure "{{ $issueDateISO }}.png" "Klicke, um die Ausgabe zu lesen" >}}
</a>

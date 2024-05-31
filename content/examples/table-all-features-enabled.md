---
title: Table - All features enabled
layout: table-all-features-enabled
weight: 10
---

```text
{{ $options := dict
  "caption" "My table"
  "fields" (slice "Title" "Date" "Summary" "Tags")
  "filterable" true
  "id" "views-table"
  "linked" true
  "pages" (where site.RegularPages "Type" "posts")
  "paginated" true
  "searchable" true
  "sortable" true
  "styled" true
}}
{{ partial "views/table.html" $options }}
```

Relying on [default values] you can rewrite the above:

[default values]: https://github.com/jmooring/hugo-module-views?tab=readme-ov-file#options

```text
{{ $options := dict
  "caption" "My table"
  "fields" (slice "Title" "Date" "Summary" "Tags")
  "pages" (where site.RegularPages "Type" "posts")
}}
{{ partial "views/table.html" $options }}
```

Click a column heading to sort in ascending order. Click again to toggle the sort direction.

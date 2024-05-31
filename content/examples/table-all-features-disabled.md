---
title: Table - All features disabled
layout: table-all-features-disabled
weight: 20
---

```text
{{ $options := dict
  "fields" (slice "Title" "Date" "Summary" "Tags")
  "filterable" false
  "linked" false
  "pages" (where site.RegularPages "Type" "posts")
  "paginated" false
  "searchable" false
  "sortable" false
  "styled" false
}}
{{ partial "views/table.html" $options }}
```

Click a column heading to sort in ascending order. Click again to toggle the sort direction.

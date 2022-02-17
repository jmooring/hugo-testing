+++
title = 'Hugo GitHub Issue #9521'
date = 2022-02-17T15:47:22-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/9521'
description = "Add support for Goat and Mermaid diagrams (via Goldmark) code fences)"
+++

Code:

###### declare x=1 {lang="bash" .my-class #my-id lineNos="table" hl_Lines="1" lineNoStart="42" onclick="alert('foo');"}

Diagram:

###### something {lang="diagram-mermaid" .my-class #my-id width="600" height="300" borderWidth="1px" borderColor="#333" onclick="alert('foo');"}

Code:

```bash {.my-class #my-id lineNos="table" hl_Lines="1" lineNoStart="42"}
declare x=1
```

Diagram:

```diagram-mermaid {.my-class #my-id width="600" height="300" borderWidth="1px" borderColor="#333"}
something
```

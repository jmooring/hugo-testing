+++
title = 'Markdown 1'
date = 2024-04-09T18:50:07-07:00
draft = false
toc = true
+++

## Introduction

The `include` shortcode resolves the given path by looking for a:

1. Page
2. Page resource
3. Global resource
4. Remote resource

The shortcode throws an error if unable to resolve the given path.

```text
{{%/* include "/markdown/markdown-2" */%}}
```

{{% include "/markdown/markdown-2" %}}

```text
{{%/* include "a.md" */%}}
```

{{% include "a.md" %}}

```text
{{%/* include "b.md" */%}}
```

{{% include "b.md" %}}

```text
{{%/* include "https://www.veriphor.com/shared/forum/hugo/topic-49219/markdown.md" */%}}
```

{{% include "https://www.veriphor.com/shared/forum/hugo/topic-49219/markdown.md" %}}

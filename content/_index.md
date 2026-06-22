+++
title = 'Home'
date = 2026-06-22T07:52:36-07:00
draft = false
details = 'https://discourse.gohugo.io/t/57290'
description = "Silent Error with .Render function in v0.163.2+extended+withdeploy"
+++

Content:

```text
content/
├── s1/
│   ├── s2/
│   │   ├── _index.md  <-- uses layouts/s1/s2/view_foo.html
│   │   ├── p5.md      <-- uses layouts/s1/s2/view_foo.html
│   │   └── p6.md      <-- uses layouts/s1/s2/p6/view_foo.html
│   ├── _index.md      <-- uses layouts/s1/view_foo.html
│   ├── p3.md          <-- uses layouts/s1/view_foo.html
│   └── p4.md          <-- uses layouts/s1/p4/view_foo.html
├── _index.md
├── p1.md              <-- uses layouts/view_foo.html
└── p2.md              <-- uses layouts/p2/view_foo.html
```

Templates:

```text
layouts/
├── _partials/
│   └── css.html
├── p2/
│   └── view_foo.html
├── s1/
│   ├── p4/
│   │   └── view_foo.html
│   ├── s2/
│   │   ├── p6/
│   │   │   └── view_foo.html
│   │   └── view_foo.html
│   └── view_foo.html
├── baseof.html
├── home.html
├── page.html       <-- calls {{ .Render "view_foo" }}
├── section.html    <-- calls {{ .Render "view_foo" }}
├── taxonomy.html
├── term.html
└── view_foo.html
```

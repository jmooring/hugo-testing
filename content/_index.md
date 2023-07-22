+++
title = 'Hugo Forum Topic #45374'
linkTitle = 'Home'
date = 2023-07-21T22:44:22-07:00
draft = false
details = 'https://discourse.gohugo.io/t/45374'
description = "Fingerprint 生成的 integrity 会带分号 “;”，请问如何去掉这个分号？"
+++

#### First, look in the terminal console

```text
WARN  sha256-U2B5qiZ9Wi9zEvSBZq2/NspY04zDZXcNyXJY+disnbc=
                                                 -
```

The plus sign in the `.Data.Integrity` value is not encoded.

#### Next, view source by pressing Ctrl+U in your browser

```text
integrity="sha256-U2B5qiZ9Wi9zEvSBZq2/NspY04zDZXcNyXJY&#43;disnbc="
                                                      -----
```

The plus sign is encoded by Go's [html/template](https://pkg.go.dev/html/template) package. There's a [related issue](https://github.com/golang/go/issues/42506) that's been open for a few years, but there's not a strong case to change anything.

#### Next, view the HTML as interpreted by your browser (dev tools)

```text
integrity="sha256-U2B5qiZ9Wi9zEvSBZq2/NspY04zDZXcNyXJY+disnbc=" 
                                                      -
```

The browser decodes `&#43;` to `+` as expected, and the SRI check passes.

#### If you don't trust the browser to properly decode...

```go-html-template
<link rel="stylesheet" href="{{ .RelPermalink }}" {{ printf "integrity=%q" .Data.Integrity | safeHTMLAttr }} crossorigin="anonymous">
```

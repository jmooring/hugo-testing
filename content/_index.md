+++
title = 'Hugo GitHub Issue #13104'
linkTitle = 'Home'
date = 2024-12-03T10:29:41-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/13104'
description = "Improve attribute handing in the embedded link and image render hooks"
+++

## Image

```text
![&<>'](a.jpg "&<>'")
{id="\"><script>alert('img')</script>" class="myclass" width=150 height=100 loading=lazy}
```

![&<>'](a.jpg "&<>'")
{id="\"><script>alert('img')</script>" class="myclass" width=150 height=100 loading=lazy}

## Link

```text
[&<>'](a.jpg "&<>'")
```

[&<>'](a.jpg "&<>'")

## Table

```text
col a|col b
:--|:-:
1|2
{id="\"><script>alert('table')</script>" class="myclass" title="&<>'"}
```

col a|col b
:--|:-:
1|2
{id="\"><script>alert('table')</script>" class="myclass" title="&<>'"}

## Image with query string and fragment

![alt](a.jpg?a=b&c=d#foo "title")

## Link with query string and fragment

[link](a.jpg?a=b&c=d#foo "title")

## Image with other protocol

![alt](irc://irc.freenode.net/#golang "title")

## Link with other protocol

[link](irc://irc.freenode.net/#golang)

## Youtube

{{< youtube id=0RKpf3rK57I loading="\"></iframe><script>alert('youtube')</script>" allowFullScreen=false >}}

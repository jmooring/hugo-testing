+++
title = 'Home'
date = 2025-07-21T05:50:11-07:00
draft = false
details = 'https://discourse.gohugo.io/t/55368'
description = "Add option to use default Chroma lexer for code fences with no language"
+++

## Example 1

````text
``` {linenos=true}
This fenced code block
doesn't have a code language
in its info string.
```
````

``` {linenos=true}
This fenced code block
doesn't have a code language
in its info string.
```

## Example 2

````text
```go {linenos=true}
s := "foo"
fmt.Println(s)
```
````

```go {linenos=true}
s := "foo"
fmt.Println(s)
```

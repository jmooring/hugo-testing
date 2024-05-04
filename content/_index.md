+++
title = 'Hugo Forum Topic #49633'
linkTitle = 'Home'
date = 2024-05-04T08:49:07-07:00
draft = false
details = 'https://discourse.gohugo.io/t/49633'
description = "How to add a copy-to-clipboard button to code blocks"
+++

A copy-to-clipboard button will appear when you place your cursor anywhere within a code block.

## No line numbers

```go {linenos=false}
package main

import "fmt"

func main() {
    fmt.Println("hello world")
}
```

## Line numbers inline

```go {linenos=inline}
package main

import "fmt"

func main() {
    fmt.Println("hello world")
}
```

## Line numbers in table cell

```go {linenos=table}
package main

import "fmt"

func main() {
    fmt.Println("hello world")
}
```

## Using the highlight shortcode

{{< highlight go "linenos=inline" >}}
package main

import "fmt"

func main() {
    fmt.Println("hello world")
}
{{< /highlight >}}

## Using the details shortcode

{{< details summary="main.go" >}}
```go {linenos=inline}
package main

import "fmt"

func main() {
    fmt.Println("hello world")
}
```
{{< /details >}}

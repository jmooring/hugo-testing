+++
title = 'Using the image render hook'
date = 2022-08-14T21:00:08-07:00
draft = false
+++

You can load the query string with:

- Element attributes
- Processing [method](https://gohugo.io/content-management/image-processing/#image-processing-methods)
- Processing [options](https://gohugo.io/content-management/image-processing/#image-processing-options)

Key|Description|Type|Example Value
:--|:--|:--|:--
`a`|anchor|processing option|`smart`
`c`|class|element attribute|`my-class`
`f`|format|processing option|`webp`
`h`|height|processing option|`400`
`i`|id|element attribute|`my-id`
`l`|loading|element attribute|`lazy`
`m`|method|processing method|`resize`
`p`|preset|processing option|`photo`
`q`|quality|processing option|`75`
`r`|rotation|processing option|`180`
`w`|width|processing option|`600`
`bc`|background color|processing option|`ffffff`
`rs`|resampling filter|processing option|`lanczos`

Notes:

1. Keys are case-sensitive
1. Values are case-insensitive
1. The default processing method is `resize`
1. To add multiple classes, provide multiple `c` key/value pairs in the query string
1. Supports remote images
1. For local images, checks first for a page resource, then for a global resource

Examples:

```text
![Petrified Forest](a.jpg?w=500 "Petrified Forest National Park")

![Bryce Canyon](images/b.jpg?h=200&f=webp)

![Zion](images/c.jpg?w=150&h=150&m=fill&q=50&f=png&i=my-id&c=my-class)

![Hugo logo](https://gohugo.io/img/hugo-logo.png?w=200&bc=bbb)
```

# Hugo Forum Topic #34833

Details: <https://discourse.gohugo.io/t/34833>

Description: Resize an image with markdown

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-34833 https://github.com/jmooring/hugo-testing hugo-forum-topic-34833
cd hugo-forum-topic-34833
hugo server
```

## Using the image render hook

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
1. To add multiple classes, provide multiple `c` key/value pairs in the query string.
1. Supports remote images
1. For local images, checks first for a page resource, then for a global resource

Examples:

```text
![](https://gohugo.io/img/hugo-logo.png)
![Logo](https://gohugo.io/img/hugo-logo.png?w=400 "Hugo Rocks!")
![](a.jpg)
![Kitten](a.jpg?w=300)
![Kitten](a.jpg?m=fill&w=100&h=100&f=webp&q=90&c=class-1&c=class-2&i=my-id&l=lazy)
```

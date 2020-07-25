+++
title = "Post 1"
date = 2020-07-20T06:58:27-04:00
draft = false
+++
This is content/post/post-1/index.md

## Test Image Paths

`kittens.jpg (page resource)`

![Kittens](kittens.jpg "Some kittens!")

`./kittens.jpg (page resource)`

![Kittens](./kittens.jpg "The same kittens!")

`/static/img/mountain.jpg (global resource)`

![Mountain](/img/mountain.jpg "A mountain!")

`/themes/foo/static/img/waterfall.jpg (global resource)`

![Waterfall](/img/waterfall.jpg "A waterfall!")

`https://gohugo.io/apple-touch-icon.png`

## Test MIME Types with Remote Images

`GIF`

![Ocean](https://www.mooring.com/api/image-attributes/samples/ocean.gif "Ocean!")

`JPG`

![Otter](https://www.mooring.com/api/image-attributes/samples/otter.jpg "Otter!")

`PNG`

![Motorcycle](https://www.mooring.com/api/image-attributes/samples/cycle.png "Motorcycle!")


`WEBP`

![Forest](https://www.mooring.com/api/image-attributes/samples/forest.webp "Forest!")

`SVG`

![Tiger](https://www.mooring.com/api/image-attributes/samples/tiger.svg "Tiger!")

## Test without Alternate Text or Title

`kittens.jpg (page resource)`

![](kittens.jpg)

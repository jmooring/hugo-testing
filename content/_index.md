+++
title = 'Hugo Forum Topic #45971'
linkTitle = 'Home'
date = 2023-08-30T18:06:21-07:00
draft = false
details = 'https://discourse.gohugo.io/t/45971'
description = "Not a hugo issue?"
+++

## Example 1

- The image is 300x200.
- The green border is the edge of the `figure` element.
- The `figure` element takes 50% of the width, and is centered, following the CSS rule above for the "center" class.
- The red border is the edge of the `img` element within the `figure element`.
- The `img` element is neither resized nor centered because **the CSS targets the `figure` element, not the `img` element.**
- I don't know how to make this any clearer. If you want something different, change the CSS.

{{< figure src="/a.jpg" class="center" >}}

## Example 2

- The image is 600x400.
- The green border is the edge of the `figure` element.
- The `figure` element takes 50% of the width, and is centered, following the CSS rule above for the "center" class.
- The red border is the edge of the `img` element within the `figure element`.
- The `img` element is neither resized nor centered because **the CSS targets the `figure` element, not the `img` element.**
- I don't know how to make this any clearer. If you want something different, change the CSS.

{{< figure src="/b.jpg" class="center" >}}

## Example 3

- The image is 4032x2268.
- The green border is the edge of the `figure` element.
- The `figure` element takes 50% of the width, and is centered, following the CSS rule above for the "center" class.
- The red border is the edge of the `img` element within the `figure element`.
- The `img` element is neither resized nor centered because **the CSS targets the `figure` element, not the `img` element.**
- I don't know how to make this any clearer. If you want something different, change the CSS.

{{< figure src="/c.jpg" class="center" >}}

+++
title = 'Figure elements'
date = 2023-10-05T10:36:49-07:00
draft = false
+++

## Images from assets/images

These are global resources because they are in the assets directory.

{{< figure src="images/a.jpg" caption="A kitten" >}}

{{< figure src="images/b.jpg" caption="Another kitten" >}}

## Image from content/tests/figure-elements.md

These are page resources because they are within a page bundle.

{{< figure src="images/c.jpg" caption="Yet another kitten" >}}

{{< figure src="images/d.jpg" caption="Petrified Forest National Park" >}}

## Images from static/images

These are global resources because the static directory is mounted to the assets directory.

{{< figure src="images/e.jpg" caption="Bryce Canyon National Park" >}}

{{< figure src="images/f.jpg" caption="Zion National Park" >}}

## Remote images

These images exist on a remote server. Hugo captures them as remote resources then serves them locally.

{{< figure src="https://www.veriphor.com/shared/samples/jpeg.jpeg" caption="A  JPEG example" >}}

{{< figure src="https://www.veriphor.com/shared/samples/webp.webp" caption="A WebP example" >}}

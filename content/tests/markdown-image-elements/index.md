+++
title = 'Markdown image elements'
date = 2023-10-05T09:23:17-07:00
draft = false
+++

## Images from assets/images

These are global resources because they are in the assets directory.

![A kitten](images/a.jpg)

![Another kitten](images/b.jpg)

## Image from content/tests/markdown-image-elements

These are page resources because they are within a page bundle.

![Yet another kitten](images/c.jpg)

![Petrified Forest National Park](images/d.jpg)

## Images from static/images

These are global resources because the static directory is mounted to the assets directory.

![Bryce Canyon National Park](images/e.jpg)

![Zion National Park](images/f.jpg)

## Remote images

These images exist on a remote server. Hugo captures them as remote resources then serves them locally.

![jpeg example](https://www.veriphor.com/shared/samples/jpeg.jpeg)

![webp example](https://www.veriphor.com/shared/samples/webp.webp)

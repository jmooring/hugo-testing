+++
title = 'Hugo Forum Topic #47329'
linkTitle = 'Home'
date = 2023-12-04T11:05:13-08:00
draft = false
details = 'https://discourse.gohugo.io/t/47329'
description = "Markdownify applying to `.Inner` with comments did not strip `/*` and `*/`"
+++

## Example 1

{{< markdown >}}
{{</* other-shortcode */>}}
Some content.
{{</* /other-shortcode */>}}
{{< /markdown >}}

## Example 2

{{< markdown >}}
This is **bold** text.
This is *emphasized* text.
{{< /markdown >}}

## Example 3

{{< markdown >}}
This is **bold** text.

This is *emphasized* text.
{{< /markdown >}}

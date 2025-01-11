---
title: "Hugo GitHub Issue #10579"
linkTitle: Home
draft: false
details: https://github.com/gohugoio/hugo/issues/10579
description: Integrate D2 diagrams
---

Hugo natively renders [D2 diagram](https://d2lang.com) markup to SVG embedded in your page. Browsers don't need to download image files, CSS, or JavaScript. Each diagram is embedded and self-contained.

While looking at this page:

1. Switch your system or browser to dark mode. Notice that the diagrams are now using a dark theme, either the default or as specified in the fenced code block attributes.
2. Change the screen width---the diagrams are responsive.

## Example 1

This is a dynamic representation of this site's structure, with a zero-based depth of 2. If you add a page at depth 1 or 2 it will immediately appear on this diagram.

Notice that each of the shapes are hyperlinks.

````text
```d2svg {sketch=true}
{{%/* generate-d2-site-structure-markup maxDepth=2 */%}}
```
````

```d2svg {sketch=true}
{{% generate-d2-site-structure-markup maxDepth=2 %}}
```

Let's rotate it, change the layout engine, and use a different light theme:

````text
```d2svg {layoutEngine=elk lightTheme=Origami}
direction: right
{{%/* generate-d2-site-structure-markup maxDepth=2 */%}}
```
````

```d2svg {layoutEngine=elk lightTheme=Origami}
direction: right
{{% generate-d2-site-structure-markup maxDepth=2 %}}
```

## Example 2

````text
```d2svg
direction: right
x -> y
```
````

```d2svg
direction: right
x -> y
```

````text
```d2svg {scale=1.5, sketch=true}
direction: right
x -> y
```
````

```d2svg {scale=1.5, sketch=true}
direction: right
x -> y
```

````text
```d2svg {scale=1.5, sketch=true, lightTheme="Everglade Green"}
direction: right
x -> y: hello {
  style.animated: true
}
```
````

```d2svg {scale=1.5, sketch=true, lightTheme="Everglade Green"}
direction: right
x -> y: hello {
  style.animated: true
}
```

## Example 3

````text
```d2svg
direction: right
plankton -> formula: will steal
formula: {
  label: ""
  equation: |latex
    \lim_{h \rightarrow 0 } \frac{f(x+h)-f(x)}{h}
  |
}
```
````

```d2svg {lightTheme="Flagship Terrastruct"}
direction: right
plankton -> formula: will steal
formula: {
  label: ""
  equation: |latex
    \lim_{h \rightarrow 0 } \frac{f(x+h)-f(x)}{h}
  |
}
```

## Example 4

````text
```d2svg
objects: {
  shape: sql_table
  id: int {constraint: primary_key}
  disk: int {constraint: foreign_key}

  json: jsonb {constraint: unique}
  last_updated: timestamp with time zone
}

disks: {
  shape: sql_table
  id: int {constraint: primary_key}
}

objects.disk -> disks.id
```
````

```d2svg
objects: {
  shape: sql_table
  id: int {constraint: primary_key}
  disk: int {constraint: foreign_key}

  json: jsonb {constraint: unique}
  last_updated: timestamp with time zone
}

disks: {
  shape: sql_table
  id: int {constraint: primary_key}
}

objects.disk -> disks.id
```

## Example 5

````text
```d2svg {layoutEngine=elk, lightTheme="Aubergine"}
zone-A: {
  machine A
  machine B: {
    submachine A
    submachine B
  }
}

zone-A.** -> load balancer
```
````

```d2svg {layoutEngine=elk, lightTheme="Aubergine"}
zone-A: {
  machine A
  machine B: {
    submachine A
    submachine B
  }
}

zone-A.** -> load balancer
```

## Example 6

````text
```d2svg {padding=50}
shape: sequence_diagram
alice -> bob: What does it mean\nto be well-adjusted?
bob -> alice: The ability to play bridge or\ngolf as if they were games.
```
````

```d2svg {padding=50}
shape: sequence_diagram
alice -> bob: What does it mean\nto be well-adjusted?
bob -> alice: The ability to play bridge or\ngolf as if they were games.
```

## Example 7

````text
```d2svg {scale=1.25}
direction: right
Database -> S3: backup
Database -> S3
Data
```
````

```d2svg {scale=1.25}
direction: right
Database -> S3: backup
Database -> S3
Database -> S3: backup
```

## Example 8

````text
```d2svg
High Mem Instance -> EC2 <- High CPU Instance: Hosted By
```
````

```d2svg
High Mem Instance -> EC2 <- High CPU Instance: Hosted By
```

## Example 9

````text
```d2svg
direction: right
X: {tooltip: Hello}
Y: {tooltip: World}
X -> Y:move your cursor\nover the circles
```
````

```d2svg
direction: right
X: {tooltip: Hello}
Y: {tooltip: World}
X -> Y:move your cursor\nover the circles
```

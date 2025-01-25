+++
title = 'Hugo Forum Topic #53261'
linkTitle = 'Home'
date = 2025-01-25T13:38:43-08:00
draft = false
details = 'https://discourse.gohugo.io/t/53261'
description = "Capturing the output of a layout template"
+++

## Use a Markdown attribute to style a task list

This approach also requires a bit of [JavaScript](/js/main.js) to pass accessibility validation.

```text
- [x] item 1
- [ ] item 2
  - [ ] item 2.1
  - [x] item 2.2
- [ ] item 3
{.tasklist}
```

- [x] item 1
- [ ] item 2
  - [ ] item 2.1
  - [x] item 2.2
- [ ] item 3
{.tasklist}

## Use a code block render hook to render a task list

The list must not have depth > 1.

````text
```todo
- [x] item 1   
- [X] item 2
- [ ] item 3
```
````

```todo
- [x] item 1   
- [X] item 2
- [ ] item 3
```

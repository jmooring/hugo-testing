+++
title = 'Home'
date = 2026-01-21T21:40:14-08:00
draft = false
details = 'https://discourse.gohugo.io/t/56603'
description = "What is the officially recommended syntax for relative links?"
+++

## Page-relative link destinations using file paths

These link destinations were composed using VS Code's path completion feature.

```text
[home](_index.md)

[s1](s1/_index.md)
[s2](s2/_index.md)

[p1](s1/p1/index.md)
[p2](s1/p2.md)
[p3](s2/p3/index.md)
[p4](s2/p4.md)
```

[home](_index.md)

[s1](s1/_index.md)
[s2](s2/_index.md)

[p1](s1/p1/index.md)
[p2](s1/p2.md)
[p3](s2/p3/index.md)
[p4](s2/p4.md)

## Page-relative link destinations using logical paths

```text
[home](.)

[s1](s1)
[s2](s2)

[p1](s1/p1)
[p2](s1/p2)
[p3](s2/p3)
[p4](s2/p4)
```

[home](.)

[s1](s1)
[s2](s2)

[p1](s1/p1)
[p2](s1/p2)
[p3](s2/p3)
[p4](s2/p4)

## Site-relative link destinations using logical paths

```text
[home](/)

[s1](/s1)
[s2](/s2)

[p1](/s1/p1)
[p2](/s1/p2)
[p3](/s2/p3)
[p4](/s2/p4)
```

[home](/)

[s1](/s1)
[s2](/s2)

[p1](/s1/p1)
[p2](/s1/p2)
[p3](/s2/p3)
[p4](/s2/p4)

## Site structure

### Source (file paths)

```text
content/
├── s1/
│   ├── p1/
│   │   └── index.md
│   ├── p2.md
│   └── _index.md
├── s2/
│   ├── p3/
│   │   └── index.md
│   ├── p4.md
│   └── _index.md
└── _index.md
```

### Source (logical paths)

```text
content/
├── s1/
│   ├── p1
│   └── p2
└── s2/
    ├── p3
    └── p4
```

### Published site (file paths)

```text
public/
├── s1/
│   ├── p1/
│   │   └── index.html
│   ├── p2/
│   │   └── index.html
│   └── index.html
├── s2/
│   ├── p3/
│   │   └── index.html
│   ├── p4/
│   │   └── index.html
│   └── index.html
└── index.html
```

### Published site (URL paths)

```text
public/
├── s1/
│   ├── p1/
│   └── p2/
└── s2/
    ├── p3/
    └── p4/
```

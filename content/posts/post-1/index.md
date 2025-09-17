+++
title = 'Post 1'
date = 2023-01-01T00:00:00-00:00
draft = false
image = "images/c.jpg"
+++

Files of interest:

- layouts/_shortcodes/img.html
- hugo.toml (lines 5-9)

Content directory structure:

```text
assets/
├── css/
│   └── main.css
└── images/
    ├── a.jpg
    └── c.jpg
content/
├── posts/
│   ├── post-1/
│   │   ├── images/
│   │   │   └── b.jpg
│   │   └── index.md
│   └── _index.md
└── _index.md
```

Insert a global resource using Markdown:

```text
![kitten](images/a.jpg)
```

![kitten](images/a.jpg)

Insert a page resource using Markdown:

```text
![kitten](images/b.jpg)
```

![kitten](images/b.jpg)

Insert a global resource using the `img` shortcode:

```text
{{</* img src="images/a.jpg" */>}}
```

{{< img src="images/a.jpg" >}}

Insert a global resource using the `img` shortcode, with `alt` attribute:

```text
{{</* img src="images/a.jpg" alt="kitten" */>}}
```

{{< img src="images/a.jpg" alt="kitten" >}}

Insert a global resource using the `img` shortcode, with `alt` and `title` attributes:

```text
{{</* img src="images/a.jpg" alt="kitten" title="My Kitten" */>}}
```

{{< img src="images/a.jpg" alt="kitten" title="My Kitten" >}}

Insert a page resource using the `img` shortcode:

```text
{{</* img src="images/b.jpg" */>}}
```

{{< img src="images/b.jpg" >}}

Insert a global resource, obtaining the `src` from the `image` front matter key:

```text
{{</* img */>}}
```

{{< img >}}

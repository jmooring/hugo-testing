+++
title = 'Post 1 (en)'
date = 2024-01-19T11:16:47-08:00
draft = false
+++

## Images

### Page resource

```text
![kitten](a.jpg) 
```

![kitten](a.jpg)

### Global resource

```text
![another kitten](/images/b.jpg)
```

![another kitten](/images/b.jpg)

### In static directory

```text
![yet another kitten](/images/c.jpg)
```

![yet another kitten](/images/c.jpg)

### Remote resource

```text
![hugo logo](https://gohugo.io/img/hugo-logo.png)
```

![hugo logo](https://gohugo.io/img/hugo-logo.png)

## Links

### To section

```text
[Posts](posts)
```

[Posts](posts)

```text
[Posts](/posts)
```

[Posts](/posts)

```text
[Posts](posts/)
```

[Posts](posts/)

```text
[Posts](/posts/)
```

[Posts](/posts/)

### To leaf bundle

```text
[Post 2](post-2)
```

[Post 2](post-2)

```text
[Post 2](post-2/)
```

[Post 2](post-2)

```text
[Post 2](post-2?foo=bar)
```

[Post 2](post-2?foo=bar)

```text
[Post 2](post-2#heading)
```

[Post 2](post-2#heading)

```text
[Post 2](post-2?foo=bar#heading)
```

[Post 2](post-2?foo=bar#heading)

### To regular page

```text
[Post 3](post-3)
```

[Post 3](post-3)

```text
[Post 3](post-3/)
```

[Post 3](post-3)

```text
[Post 3](post-3?foo=bar)
```

[Post 3](post-3?foo=bar)

```text
[Post 3](post-3#heading)
```

[Post 3](post-3#heading)

```text
[Post 3](post-3?foo=bar#heading)
```

[Post 3](post-3?foo=bar#heading)

### To page resource

```text
[PDF A](a.pdf)
```

[PDF A](a.pdf)

### To global resource

```text
[PDF B](/docs/b.pdf)
```

[PDF B](/docs/b.pdf)

### To file in static directory

```text
[PDF C](/docs/c.pdf)
```

[PDF C](/docs/c.pdf)

### To remote file

```text
[PDF D](https://www.veriphor.com/shared/samples/d.pdf)
```

[PDF D](https://www.veriphor.com/shared/samples/d.pdf)

## Other

### Adjacent images (no space between)

```text
![Petrified Forest](/images/d.jpg)![Bryce Canyon](/images/e.jpg)
```

![Petrified Forest](/images/d.jpg)![Bryce Canyon](/images/e.jpg)

### Adjacent links (no space between)

```text
[Post 2](post-2)[Post 3](post-3)
```

[Post 2](post-2)[Post 3](post-3)

### Image with title attribute and markup in image text

```text
![**kitten**](a.jpg "A kitten!")
```

![**kitten**](a.jpg "A kitten!")

### Link with title attribute and markup in link text

```text
[**Post 2**](post-2 "Link to Post 2")
```

[**Post 2**](post-2 "Link to Post 2")

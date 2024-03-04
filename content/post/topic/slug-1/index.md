+++
title = 'Slug 1'
date = 2024-03-04T12:47:43-08:00
draft = false
+++

## Global resource

```text
![a kitten](images/a.jpg)
```

![a kitten](images/a.jpg)

## Page resource

```text
![another kitten](images/b.jpg)
```

![another kitten](images/b.jpg)

## Page resource associated with a different page (Method A)

Note that this site is served from the subdirectory "foo" so we need to preface
the path below with the subdirectory. This approach is very fragile; the link will break if you change the base URL, add `slug` or `url` to front matter, set `permalinks` in your site configuration, etc.

```text
![yet another kitten](/foo/post/topic/slug-2/images/c.jpg)
```

![yet another kitten](/foo/post/topic/slug-2/images/c.jpg)

## Page resource associated with a different page (Method B)

This combines the relref shortcode (use the `{{%/* */%}}` notation) with an image path relative to the source page.

```text
![yet another kitten]({{%/* relref "/post/topic/slug-2" */%}}images/c.jpg)
```

![yet another kitten]({{% relref "/post/topic/slug-2" %}}images/c.jpg)

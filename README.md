# Hugo Forum Topic #37576

Details: <https://discourse.gohugo.io/t/37576>

Description: Using :sections in permalinks not working as expected

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-37576 https://github.com/jmooring/hugo-testing hugo-forum-topic-37576
cd hugo-forum-topic-37576
hugo server
```

## Testing Notes

With this content structure:

```text
content/
├── posts/
│   ├── section-a/
│   │   ├── section-b/
│   │   │   ├── bundle-directory/
│   │   │   │   └── index.md
│   │   │   └── _index.md
│   │   └── _index.md
│   └── _index.md
└── _index.md
```

These are the results of various permalink configurations:

Permalinks configuration|RelPermalink|Notes
:--|:--|:--
`posts = '/:sections[:0]/:title/'`|`/title/`|OK
`posts = '/:sections[:1]/:title/'`|`/posts/title/`|OK
`posts = '/:sections[:2]/:title/'`|`/posts/section-a/title/`|OK
`posts = '/:sections[:3]/:title/'`|`/posts/section-a/section-b/title/`|OK
`posts = '/:sections[:4]/:title/'`|`/posts/section-a/section-b/title/`|OK
`posts = '/:sections[:last]/:title/'`|`/posts/section-a/title/`|Not what I expected[^1]
&nbsp;|&nbsp;|&nbsp;
`posts = '/:sections[0:0]/:title/'`|`/title/`|OK
`posts = '/:sections[0:1]/:title/'`|`/posts/title/`|OK
`posts = '/:sections[0:2]/:title/'`|`/posts/section-a/title/`|OK
`posts = '/:sections[0:3]/:title/'`|`/posts/section-a/section-b/title/`|OK
`posts = '/:sections[0:4]/:title/'`|`/posts/section-a/section-b/title/`|OK
`posts = '/:sections[0:last]/:title/'`|`/posts/section-a/title/`|Not what I expected[^1]
&nbsp;|&nbsp;|&nbsp;
`posts = '/:sections[1:0]/:title/'`|`/title/`|Panic
`posts = '/:sections[1:1]/:title/'`|`/title/`|OK
`posts = '/:sections[1:2]/:title/'`|`/section-a/title/`|OK
`posts = '/:sections[1:3]/:title/'`|`/section-a/section-b/title/`|OK
`posts = '/:sections[1:4]/:title/'`|`/section-a/section-b/title/`|OK
`posts = '/:sections[1:last]/:title/'`|`/section-a/title/`|Not what I expected[^1]
&nbsp;|&nbsp;|&nbsp;
`posts = '/:sections[:]/:title/'`|`/posts/section-a/section-b/title/`|OK
`posts = '/:sections[last]/:title/'`|`/section-b/title/`|OK

[^1]: But it matches the [documentation](https://gohugo.io/content-management/urls/#permalink-configuration-values)

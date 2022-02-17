# Hugo Forum Topic #37215

Details: <https://discourse.gohugo.io/t/37215>

Description: Content mount problem for single-language "multilingual" site

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-37215 https://github.com/jmooring/hugo-testing hugo-forum-topic-37215
cd hugo-forum-topic-37215
hugo && tree public/
```

Result:

```text
public/
├── post/
│   ├── test/
│   │   └── index.html
│   └── index.html
└── index.html
```

Now add this to config.toml:

```toml
[[module.mounts]]
source = "content"
target = "content"
```

And then this:

```bash
rm -rf public/ && hugo && tree public/
```

Produces this:

```text
public/
├── foo/
│   ├── post/
│   │   └── test/
│   │       └── index.html
│   └── index.html
└── index.html
```

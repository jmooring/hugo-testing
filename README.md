# Hugo Forum Topic #48449

Details: <https://discourse.gohugo.io/t/48449>

Description: 0.123 doesn't have drafts?

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-48449 https://github.com/jmooring/hugo-testing hugo-forum-topic-48449
cd hugo-forum-topic-48449
rm -rf public/ && hugo && tree public
```

Expected (v0.122.0):

```text
public/
└── index.html
```

Actual (v0.123.0):

```text
public/
├── de/
│   └── s1/
│     ├── p1/
│     │ └── index.html
│     └── index.html
└── index.html
```

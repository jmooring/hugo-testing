# Hugo Forum Topic #48374

Details: <https://discourse.gohugo.io/t/48374>

Description: Hugo v0.123.0: Not all contents of `static` are copied to `publishDir`

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-48374 https://github.com/jmooring/hugo-testing hugo-forum-topic-48374
cd hugo-forum-topic-48374
rm -rf public/ && hugo && tree public
```

Expected (v0.122.0)

```text
public/
├── dir/
│   ├── a.txt
│   └── b.txt
└── index.html
```

Actual (v0.123.0)

```text
public/
├── dir/
│   └── b.txt
└── index.html
```

# Hugo Forum Topic #45103

Details: <https://discourse.gohugo.io/t/45103>

Description: 0.115.0: outputFormats issue

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-45103 https://github.com/jmooring/hugo-testing hugo-forum-topic-45103
cd hugo-forum-topic-45103
rm -rf public/ && hugo && tree public
```

Expected result:

```text
public/
├── en/
│   ├── posts/
│   │   ├── post-1/
│   │   │   └── index.html
│   │   └── index.html
│   ├── imagessitemap.xml
│   └── index.html
├── pl/
│   ├── imagessitemap.xml
│   └── index.html
├── posts/
│   ├── post-1/
│   │   └── index.html
│   └── index.html
└── index.html
```

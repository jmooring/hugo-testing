# Hugo Forum Topic #50255

Details: <https://discourse.gohugo.io/t/50255>

Description: Granular Output Configuration

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-50255 https://github.com/jmooring/hugo-testing hugo-forum-topic-50255
cd hugo-forum-topic-50255
hugo && tree public
```

Expected output (ICS files only for authors taxonomy/term pages):

```text
public/
├── authors/
│   ├── author-a/
│   │   ├── index.html
│   │   └── index.ics
│   ├── author-b/
│   │   ├── index.html
│   │   └── index.ics
│   ├── index.html
│   └── index.ics
├── categories/
│   ├── category-a/
│   │   └── index.html
│   ├── category-b/
│   │   └── index.html
│   └── index.html
├── tags/
│   ├── tag-a/
│   │   └── index.html
│   ├── tag-b/
│   │   └── index.html
│   └── index.html
├── favicon.ico
├── index.html
├── index.xml
└── sitemap.xml
```

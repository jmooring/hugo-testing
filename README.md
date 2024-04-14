# Hugo Forum Topic #49273

Details: <https://discourse.gohugo.io/t/49273>

Description: 404 in Multilingual site

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-49273 https://github.com/jmooring/hugo-testing hugo-forum-topic-49273
cd hugo-forum-topic-49273
hugo && tree public
```

Expected output:

```text
public/
├── en/
│   ├── 400.html
│   ├── 404.html
│   └── index.html
├── fr/
│   ├── 400.html
│   ├── 404.html
│   └── index.html
├── favicon.ico
└── index.html
```

Then do this:

```text
grep "<h2>Page" public/en/404.html
grep "<h2>Page" public/fr/404.html
```

Expected output:

```text
<h2>Page not found</h2>
<h2>Page non trouvée</h2>
```

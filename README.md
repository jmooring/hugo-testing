# Hugo GitHub Issue #10400

Details: <https://github.com/gohugoio/hugo/issues/10400>

Description: Cannot create language-specific 404 template

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-10400 https://github.com/jmooring/hugo-testing hugo-github-issue-10400
cd hugo-github-issue-10400
hugo && tree public
```

Expected output:

```text
public/
├── en/
│   ├── 404.html
│   └── index.html
├── fr/
│   ├── 404.html
│   └── index.html
└── index.html
```

Then run:

```text
cat public/{en,fr}/404.html
```

Expected output:

```text
layouts/404.en.html
layouts/404.fr.html
```

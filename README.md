# Hugo GitHub Issue #12105

Details: <https://github.com/gohugoio/hugo/issues/12105>

Description: Page resources missing when language variant is draft

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12105 https://github.com/jmooring/hugo-testing hugo-github-issue-12105
cd hugo-github-issue-12105
rm -rf public/ && hugo && tree public
```

Expected:

```text
public/
├── de/
│   └── index.html
├── en/
│   ├── my-bundle/
│   │   ├── a.jpg
│   │   └── index.html
│   └── index.html
├── fr/
│   ├── my-bundle/
│   │   └── index.html
│   └── index.html
├── favicon.ico
└── index.html
```

Actual:

```text
public/
├── de/
│   └── index.html
├── en/
│   ├── my-bundle/
│   │   └── index.html
│   └── index.html
├── fr/
│   ├── my-bundle/
│   │   └── index.html
│   └── index.html
├── favicon.ico
└── index.html
```

# Hugo GitHub Issue #10115

Details: <https://github.com/gohugoio/hugo/issues/10115>

Description: Blank taxonomy pages when using Permalink

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-10115 https://github.com/jmooring/hugo-testing hugo-github-issue-10115
cd hugo-github-issue-10115
rm -rf public/ && hugo && tree public
```

Output:

```text
public/
├── post/
│   ├── test/
│   │   └── index.html
│   └── index.html
├── testing/
│   └── duck/
│       └── index.html
├── tests/
│   └── index.html
└── index.html
```

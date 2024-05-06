# Hugo GitHub Issue #12465

Details: <https://github.com/gohugoio/hugo/issues/12465>

Description: Cascade property affects the next page with similar name

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12465 https://github.com/jmooring/hugo-testing hugo-github-issue-12465
cd hugo-github-issue-12465
rm -rf public resources && hugo && tree public
```

Expected:

```text
public/
├── sx/
│   ├── p2/
│   │   └── index.html
│   └── index.html
└── favicon.ico
```

Actual:

```text
public/
└── favicon.ico
```

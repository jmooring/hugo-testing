# Hugo GitHub Issue #12493

Details: <https://github.com/gohugoio/hugo/issues/12493>

Description: Content adapters clip path after last dot

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12493 https://github.com/jmooring/hugo-testing hugo-github-issue-12493
cd hugo-github-issue-12493
rm -rf public && hugo && tree public
```

Expected:

```text
public/
└── s-1.2.3/
    └── p-4.5.6/
        └── index.html
```

Actual:

```text
public/
└── s-1.2.3/
    └── p-4.5/
        └── index.html
```

# Hugo GitHub Issue #12214

Details: <https://github.com/gohugoio/hugo/issues/12214>

Description: resources.Get and resources.GetMatch failing when used with resources.ByType and resources.Match

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12214 https://github.com/jmooring/hugo-testing hugo-github-issue-12214
cd hugo-github-issue-12214
rm -rf public/ && hugo && tree public
```

Expected:

```text
public/
├── snippets/
│   ├── a.txt
│   └── b.txt
└── index.html
```

Actual:

```text
public/
└── index.html
```

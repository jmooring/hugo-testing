# Hugo GitHub Issue #12079

Details: <https://github.com/gohugoio/hugo/issues/12079>

Description: multilingual: Warn when resources are discarded

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12079 https://github.com/jmooring/hugo-testing hugo-github-issue-12079
cd hugo-github-issue-12079
rm -rf public/ && hugo && tree public
```

Expected/desired output:

```text
public/
├── de/
│   ├── s1/
│   │   ├── files/
│   │   │   ├── a.txt
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
├── en/
│   ├── s1/
│   │   └── files/
│   │       └── b.txt
│   └── index.html
└── index.html
```

Or throw a warning that we're going to discard resources.

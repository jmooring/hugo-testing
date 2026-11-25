# Hugo GitHub Issue #15508

Details: <https://github.com/gohugoio/hugo/issues/15508>

Description: Deprecate hugo.IsExtended and flip it to make it return true

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15508 https://github.com/jmooring/hugo-testing hugo-github-issue-15508
cd hugo-github-issue-15508
rm -rf public && hugo && tree public
```

Expected structure:

```text
public/
├── images/
│   └── a_hu_698bf57b43642d2c.webp
├── favicon.ico
└── index.html
```

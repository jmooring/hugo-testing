# Hugo GitHub Issue #14948

Details: <https://github.com/gohugoio/hugo/issues/14948>

Description: Localization broken for locales with partial month/day overrides

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-14948 https://github.com/jmooring/hugo-testing hugo-github-issue-14948
rm -rf public && hugo && cat public/index.html
```

Expected:

```text
Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|
```

Actual:

```text
||||||||Sept||||
```

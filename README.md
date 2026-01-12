# Hugo GitHub Issue #14365

Details: <https://github.com/gohugoio/hugo/issues/14365>

Description: Canonical link of page alias refers to page in wrong language in the presence of fallbacks

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-14365 https://github.com/jmooring/hugo-testing hugo-github-issue-14365
cd hugo-github-issue-14365
rm -rf public/ && hugo && cat public/en/p1-alias/index.html public/fr/p1-alias/index.html
```

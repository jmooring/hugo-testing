# Hugo GitHub Issue #9324

Details: <https://github.com/gohugoio/hugo/issues/9324>

Description: Wrong Permalink for resource in multihost mode when baseURL in one language has a sub path

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-9324 https://github.com/jmooring/hugo-testing hugo-github-issue-9324
cd hugo-github-issue-9324
rm -rf public && hugo && cat public/fr/p1/index.html
```

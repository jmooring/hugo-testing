# Hugo GitHub Issue #15257

Details: <https://github.com/gohugoio/hugo/issues/15257>

Description: --minify produces invalid markup with SVG

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15257 https://github.com/jmooring/hugo-testing hugo-github-issue-15257
cd hugo-github-issue-15257
hugo --minify && cat public/index.html
```
